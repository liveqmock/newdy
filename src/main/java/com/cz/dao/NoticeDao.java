package com.cz.dao;

import com.cz.model.Notice;

public interface NoticeDao {

    int deleteByPrimaryKey(Integer notice_id);

    int insert(Notice record);

    int insertSelective(Notice record);

    Notice selectByPrimaryKey(Integer notice_id);

    int updateByPrimaryKeySelective(Notice record);

    int updateByPrimaryKey(Notice record);
}