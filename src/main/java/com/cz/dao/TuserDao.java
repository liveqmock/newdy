package com.cz.dao;

import com.cz.model.Tuser;
import java.util.List;

import com.cz.utils.PageUtil;
public interface TuserDao {

    int deleteByPrimaryKey(Integer userId);

    int insert(Tuser record);

    List<Tuser> getAllTuserPageList(PageUtil<Tuser> pageUtil);

    int getAllTuserTotal(PageUtil<Tuser> pageUtil);

    int insertSelective(Tuser record);

    Tuser selectByPrimaryKey(Integer userId);

    int updateByPrimaryKeySelective(Tuser record);

    int updateByPrimaryKey(Tuser record);

    Tuser getTuserByUserName(String userName);
}