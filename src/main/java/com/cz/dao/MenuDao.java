package com.cz.dao;

import com.cz.model.Menu;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MenuDao {

    int deleteByPrimaryKey(Integer menu_id);

    int insert(Menu record);

    int insertSelective(Menu record);

    Menu selectByPrimaryKey(Integer menu_id);

    int updateByPrimaryKeySelective(Menu record);

    int updateByPrimaryKey(Menu record);
}