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
        return 0;  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public int insert(Menu record) {
        return 0;  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public int insertSelective(Menu record) {
        return 0;  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public Menu selectByPrimaryKey(Integer menu_id) {
        return null;  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public int updateByPrimaryKeySelective(Menu record) {
        return 0;  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public int updateByPrimaryKey(Menu record) {
        return 0;  //To change body of implemented methods use File | Settings | File Templates.
    }

    /**
     * 根据用户id查询用户的功能菜单
     * @param userId
     * @return
     */
    @Override
    public Map<String, Object> getMainMenuByUserId(Integer userId) {
        // 查出这个人所有的一级菜单
        Map<String, Object> map = new HashMap<String, Object>();
        List<Menu> topMenu = menuDao.getTopMenu(userId);
        map.put("topMenu",topMenu);
        for(int i=0;i<topMenu.size();i++){
            // 遍历一级菜单 查询出二级菜单
            System.out.println(topMenu.get(i).getMenu_name());
            // getMenuByParentId(topMenu.get(i).getMenu_id());
        }
        return map;
    }

    /**
     * 根据菜单id查询其下的菜单
     * @param menuId
     * @return
     */
    public List<Menu> getMenuByParentId(Integer menuId){
        return getMenuByParentId(menuId);
    }
}
