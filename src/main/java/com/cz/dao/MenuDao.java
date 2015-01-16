package com.cz.dao;

import com.cz.model.Menu;
import java.util.List;
import java.util.Map;

public interface MenuDao {

    int deleteByPrimaryKey(Integer menu_id);

    int insert(Menu record);

    int insertSelective(Menu record);

    Menu selectByPrimaryKey(Integer menu_id);

    int updateByPrimaryKeySelective(Menu record);

    int updateByPrimaryKey(Menu record);

    List<Menu> getTopMenu(Integer userId);

    List<Menu> getMenuByParentId(Integer menu_id);

    /**
     * @param map
     * @return
     */
    List<Menu> getMenuByParentId(Map map);

    List<Menu> getSuperAdminMenu();
}