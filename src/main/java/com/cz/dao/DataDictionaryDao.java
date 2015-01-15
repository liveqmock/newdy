package com.cz.dao;

import com.cz.model.DataDictionary;

public interface DataDictionaryDao {

    int deleteByPrimaryKey(String data_id);

    int insert(DataDictionary record);

    int insertSelective(DataDictionary record);

    DataDictionary selectByPrimaryKey(String data_id);

    int updateByPrimaryKeySelective(DataDictionary record);

    int updateByPrimaryKey(DataDictionary record);
}