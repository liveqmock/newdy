/**
 * 
 */
package com.cz.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cz.model.Tuser;
import com.cz.utils.BaseController;
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
            request.getSession().setAttribute("userName","Admin");
			if (userInfoTmp != null) {
				ModelAndView model = new ModelAndView();
				model.setViewName("redirect:/tuser/platform");
				return model;
			} else {
				if ("0".equalsIgnoreCase(userLogo)) {
					// 管理员登录
					if (userInfo == null
							|| (StringUtils.isEmpty(userInfo.getUserName()) && StringUtils
									.isEmpty(userInfo.getPassword()))) {
						userInfo = getCurrentUser(request);
					}
					request.setAttribute("msg", "");
					request.getRequestDispatcher("/login.jsp").forward(request,response);
				} else if ("1".equalsIgnoreCase(userLogo)) {
					// 非管理员登陆
					ModelAndView model = new ModelAndView();
					model.setViewName("/manager/index");
                    return model;
				} else {
					// 意外事件
					request.setAttribute("msg", "");
					request.getRequestDispatcher("/login.jsp").forward(request,response);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;

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
