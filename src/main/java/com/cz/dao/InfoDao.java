package com.cz.dao;

import com.cz.model.Info;

public interface InfoDao {

    int deleteByPrimaryKey(Integer info_id);

    int insert(Info record);

    int insertSelective(Info record);

    Info selectByPrimaryKey(Integer info_id);

    int updateByPrimaryKeySelective(Info record);

    int updateByPrimaryKey(Info record);
}