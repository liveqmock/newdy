package com.cz.service.impl;

import com.cz.dao.MenuDao;
import com.cz.model.Menu;
import com.cz.service.MenuService;
import com.cz.utils.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created with IntelliJ IDEA
 * to do
 * User: ChangYY
 * Date: 15-1-15
 * Time: 下午1:46
 */
@Service("menuService")
public class MenuServiceImpl implements MenuService {


    @Autowired
    MenuDao menuDao;


    @Override
    public int deleteByPrimaryKey(Integer menu_id) {
        return menuDao.deleteByPrimaryKey(menu_id);  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public int insert(Menu menu) {
        return menuDao.insert(menu);  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public int insertSelective(Menu menu) {
        return menuDao.insertSelective(menu);  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public Menu selectByPrimaryKey(Integer menu_id) {
        return menuDao.selectByPrimaryKey(menu_id);  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public int updateByPrimaryKeySelective(Menu menu) {
        return menuDao.updateByPrimaryKeySelective(menu);  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public int updateByPrimaryKey(Menu menu) {
        return menuDao.updateByPrimaryKey(menu);  //To change body of implemented methods use File | Settings | File Templates.
    }

    /**
     * 根据用户id查询用户的功能菜单 Map
     * @param userId
     * @return
     */
    @Override
    public Map<String, Object> getMainMenuByUserId(Integer userId) {
        // 查出这个人所有的一级菜单
        Map<String, Object> map = new HashMap<String, Object>();
        List<Menu> topMenu = menuDao.getTopMenu(userId);
        map.put("topMenu",topMenu);
        return map;
    }

    /**
     * 根据用户Id获取用户菜单 List
     * @param userId
     * @return
     */
    @Override
    public List<Menu> getTopMenuByUserId(Integer userId){
        if(userId==2){
            return menuDao.getSuperAdminMenu();
        }
        return menuDao.getTopMenu(userId);
        // return menuDao.getSuperAdminMenu();
    }

    /**
     * 获取超级管理员的菜单
     * @return
     */
    @Override
    public List<Menu> getSuperAdminMenu(){
        return menuDao.getSuperAdminMenu();
    }

    /**
     * 根据菜单id查询其下的菜单
     * @param menuId
     * @return
     */
    public List<Menu> getMenuByParentId(Integer menuId){
        Map<String,Integer> map = new HashMap<String,Integer>();
        map.put("menu_id",menuId);
        return menuDao.getMenuByParentId(map);
    }
}
