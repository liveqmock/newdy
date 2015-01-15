package com.cz.web;

import com.cz.utils.BaseController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * Created with IntelliJ IDEA.
 * User: ChangYY
 * Date: 15-1-15
 * Time: 上午9:25
 * To change this template use File | Settings | File Templates.
 */
public class TuserController extends BaseController {

    /**
     * 跳转到首页
     *
     * @return
     */
    @RequestMapping(value = "/homePage")
    public ModelAndView homePage(HttpServletRequest request) {
        ModelAndView model = new ModelAndView();
        model.addObject("userinfo", request.getSession().getAttribute("userInfo"));
        model.setViewName("/main/index");
        return model;
    }
}
