package com.cz.service.impl;

import com.cz.dao.RoleDao;
import com.cz.model.Role;
import com.cz.service.RoleService;
import com.cz.utils.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by ChangYY
 * 2015/1/17
 * 20:48
 * TO DO What
 */
@Service("roleService")
public class RoleServiceImpl implements RoleService {

    @Autowired
    RoleDao roleDao;

    @Override
    public int addRole(Role role) {
        return roleDao.addRole(role);
    }

    @Override
    public int deleteRole(String roleId) {
        return roleDao.deleteRole(roleId);
    }

    @Override
    public int updateRole(Role role) {
        return roleDao.updateRole(role);
    }

    @Override
    public Role getRoleById(String roleId) {
        return roleDao.getRoleById(roleId);
    }

    @Override
    public PageUtil<Role> getAllRolePageList(PageUtil<Role> pageUtil) {
        List<Role> list = roleDao.getAllRolePageList(pageUtil);
        int total = roleDao.getRolesTotal(pageUtil);
        pageUtil.setResults(list);
        pageUtil.setTotalRecord(total);
        return pageUtil;
    }
}
