package com.cz.dao;

import com.cz.model.Menu;
import com.cz.utils.PageUtil;

import java.util.List;
import java.util.Map;

public interface MenuDao {


    int addMenu(Menu menu);

    int deleteMenu(String menuId);

    int updateMenu(Menu menu);

    Menu getMenuById(String menuId);

    PageUtil<Menu> getAllMenuPageList(PageUtil<Menu> pageUtil);

    List<Menu> getTopMenu(Integer userId);

    List<Menu> getMenuByParentId(Integer menu_id);

    /**
     * @param map
     * @return
     */
    List<Menu> getMenuByParentId(Map map);

    List<Menu> getSuperAdminMenu();

    List<Menu> getMenuTree();

}