package com.cz.dao;

import com.cz.model.PayRecords;

public interface PayRecordsDao {

    int deleteByPrimaryKey(Integer pay_record_id);

    int insert(PayRecords record);

    int insertSelective(PayRecords record);

    PayRecords selectByPrimaryKey(Integer pay_record_id);

    int updateByPrimaryKeySelective(PayRecords record);

    int updateByPrimaryKey(PayRecords record);
}