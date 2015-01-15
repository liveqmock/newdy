package com.cz.dao;

import com.cz.model.PayRecordDetail;

public interface PayRecordDetailDao {

    int deleteByPrimaryKey(Integer id);

    int insert(PayRecordDetail record);

    int insertSelective(PayRecordDetail record);

    PayRecordDetail selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(PayRecordDetail record);

    int updateByPrimaryKey(PayRecordDetail record);
}