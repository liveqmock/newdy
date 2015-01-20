package com.cz.service;

import com.cz.model.Menu;
import com.cz.utils.PageUtil;

import java.util.List;
import java.util.Map;

/**
 * Created with IntelliJ IDEA
 * to do
 * User: ChangYY
 * Date: 15-1-15
 * Time: 下午1:44
 */
public interface MenuService {

    int addMenu(Menu menu);

    int deleteMenu(String menuId);

    int updateMenu(Menu menu);

    Menu getMenuById(String menuId);

    PageUtil<Menu> getAllMenuPageList(PageUtil<Menu> pageUtil);

    Map<String, Object> getMainMenuByUserId(Integer userId);

    List<Menu> getTopMenuByUserId(Integer userId);

    List<Menu> getMenuByParentId(Integer menu_id);

    List<Menu> getSuperAdminMenu();

    List<Menu> getMenuTree();
}
