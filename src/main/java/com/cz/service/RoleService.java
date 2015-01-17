package com.cz.service;

import com.cz.model.Role;
import com.cz.utils.PageUtil;

/**
 * Created by ChangYY
 * 2015/1/17
 * 20:04
 * TO DO What
 */
public interface RoleService {

    int addRole(Role role);

    int deleteRole(String roleId);

    int updateRole(Role role);

    Role getRoleById(String roleId);

    PageUtil<Role> getAllRolePageList(PageUtil<Role> pageUtil);

}
