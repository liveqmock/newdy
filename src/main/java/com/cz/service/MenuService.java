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

    int deleteByPrimaryKey(Integer menu_id);

    int insert(Menu record);

    int insertSelective(Menu record);

    Menu selectByPrimaryKey(Integer menu_id);

    int updateByPrimaryKeySelective(Menu record);

    int updateByPrimaryKey(Menu record);

    Map<String, Object> getMainMenuByUserId(Integer userId);

    List<Menu> getTopMenuByUserId(Integer userId);

    List<Menu> getMenuByParentId(Integer menu_id);

    List<Menu> getSuperAdminMenu();
}
