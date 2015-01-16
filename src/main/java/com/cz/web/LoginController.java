/**
 * 
 */
package com.cz.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cz.model.Tuser;
import com.cz.service.TuserService;
import com.cz.utils.BaseController;
import com.cz.utils.Constant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.druid.util.StringUtils;

/**
 * @author hyrt001
 * 
 */
@Controller
@RequestMapping
public class LoginController extends BaseController {

	@Autowired
	private TuserService tuserService;

	/**
	 *  用户登录
	 * @param request
	 * @param userInfo
	 * @param response
	 * @param userLogo
	 * @return
	 */
	@RequestMapping(value = "/login")
	public ModelAndView userLogin(HttpServletRequest request,
			Tuser userInfo, HttpServletResponse response, String userLogo) {
		try {
			Tuser userInfoTmp = getCurrentUser(request);
			if (userInfoTmp != null) {
				ModelAndView model = new ModelAndView();
				model.setViewName("manager/index");
				return model;
			} else {
				if (userInfo == null
						|| (StringUtils.isEmpty(userInfo.getUserName()) && StringUtils
								.isEmpty(userInfo.getPassword()))) {
					userInfo = getCurrentUser(request);
					request.setAttribute("msg", "用户名或者密码不能为空");
					request.getRequestDispatcher("/login.jsp").forward(request,response);
				}else{
					userInfoTmp = tuserService.getTuserByUserName(userInfo.getUserName());
					if(userInfoTmp!=null){
						if(userInfo.getPassword().equals(userInfoTmp.getPassword())){
							request.getSession().setAttribute(Constant.USERINFO,userInfoTmp);
							ModelAndView model = new ModelAndView();
							model.setViewName("manager/index");
							return model;
						}else{
							request.setAttribute("msg", "密码不正确");
							request.getRequestDispatcher("/login.jsp").forward(request,response);
						}
					}else{
						request.setAttribute("msg", "用户名不正确");
						request.getRequestDispatcher("/login.jsp").forward(request,response);
					}
				}

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;

	}

	/**
	 * 用户退出登陆
	 * @param request
	 * @param response
	 */
	@RequestMapping(value = "/loginOut")
	public void loginOut(HttpServletRequest request,HttpServletResponse response){
		try {
			Tuser userInfo = getCurrentUser(request);
			if (userInfo == null) {
				response.sendRedirect("/login.jsp");
			} else {
				HttpSession session = request.getSession();
				session.removeAttribute(Constant.USERINFO);
				//session.invalidate();
				response.sendRedirect("/login.jsp");
			}
		} catch (Exception e){
			e.printStackTrace();
		}

	}
	/**
	 * 用户访问网站首页
	 * @return
	 */
	@RequestMapping(value = "/main")
	public ModelAndView webIndex(){
		ModelAndView model = new ModelAndView();
		model.setViewName("/manager/index");
        return model;
	}
}
