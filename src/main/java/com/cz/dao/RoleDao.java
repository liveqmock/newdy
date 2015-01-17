package com.cz.dao;

import com.cz.model.Role;
import com.cz.utils.PageUtil;

public interface RoleDao {

    int addRole(Role role);

    int deleteRole(String roleId);

    int updateRole(Role role);

    Role getRoleById(String roleId);

    PageUtil<Role> getAllRolePageList(PageUtil<Role> pageUtil);
}