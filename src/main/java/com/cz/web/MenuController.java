package com.cz.web;

import com.cz.model.Menu;
import com.cz.service.MenuService;
import com.cz.utils.BaseController;
import com.cz.utils.LogUtils;
import com.cz.utils.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: ChangYY
 * Date: 15-1-15
 * Time: 上午9:25
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping("/menu")
public class MenuController extends BaseController {

    private LogUtils logger = LogUtils.getLogUtils(TuserController.class);
    private static String commonPath="menu";

    @Autowired
    private MenuService menuService;

    /**
     * 获取主菜单
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/getTopMenu")
    public ModelAndView getMenu(HttpServletRequest request,HttpServletResponse response) {
        // menuTopList 一级菜单
        List<Menu> menuTopList = menuService.getTopMenuByUserId(2);
        // menuMap 二级菜单  map key一级菜单主键 value　二级菜单列表
        Map<Integer, List<Menu>> map = new HashMap<Integer, List<Menu>>();
        for(Menu menu:menuTopList){
            map.put(menu.getMenu_id(),menuService.getMenuByParentId(menu.getMenu_id()));
        }
        System.out.println("menuTopList:---"+menuTopList);
        System.out.println("map:---"+map);
        ModelAndView model = new ModelAndView();
        model.addObject("map",map);
        model.addObject("menuTopList",menuTopList);
        model.setViewName(getPath(commonPath, "menu"));
        return model;
    }

    @RequestMapping(value = "/getTopMenuBak")
    public ModelAndView getMenu_bak(HttpServletRequest request,HttpServletResponse response) {
        Map<String, Object> menuMap = menuService.getMainMenuByUserId(2);
        ModelAndView model = new ModelAndView();
        model.addObject("menuMap",menuMap);
        model.setViewName(getPath(commonPath, "menu"));
        return model;
    }

    /**
     * 获取主菜单
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/getMenuByParentId")
    public ModelAndView getMenuByParentId(HttpServletRequest request,HttpServletResponse response) {
        List<Menu> menuList= menuService.getMenuByParentId(2);
        ModelAndView model = new ModelAndView();
        model.addObject(menuList);
        model.setViewName(getPath(commonPath, "menu"));
        return model;
    }

}
