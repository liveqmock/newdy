package com.cz.dao;

import com.cz.model.Tuser;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TuserDao {

    int deleteByPrimaryKey(Integer userId);

    int insert(Tuser record);

    int insertSelective(Tuser record);

    Tuser selectByPrimaryKey(Integer userId);

    int updateByPrimaryKeySelective(Tuser record);

    int updateByPrimaryKey(Tuser record);
}