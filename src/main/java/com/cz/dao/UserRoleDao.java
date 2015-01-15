package com.cz.dao;

import com.cz.model.UserRole;

public interface UserRoleDao {

    int deleteByPrimaryKey(Integer userRoleId);

    int insert(UserRole record);

    int insertSelective(UserRole record);

    UserRole selectByPrimaryKey(Integer userRoleId);

    int updateByPrimaryKeySelective(UserRole record);

    int updateByPrimaryKey(UserRole record);
}