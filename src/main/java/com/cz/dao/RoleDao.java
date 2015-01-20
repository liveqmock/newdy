package com.cz.dao;

import com.cz.model.Role;
import com.cz.utils.PageUtil;

import java.util.List;

public interface RoleDao {

    int addRole(Role role);

    int deleteRole(String roleId);

    int updateRole(Role role);

    Role getRoleById(String roleId);

    int getRolesTotal(PageUtil<Role> pageUtil);

    List<Role> getAllRolePageList(PageUtil<Role> pageUtil);
}