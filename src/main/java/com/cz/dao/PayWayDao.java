package com.cz.dao;

import com.cz.model.PayWay;

public interface PayWayDao {

    int deleteByPrimaryKey(Integer payWayId);

    int insert(PayWay record);

    int insertSelective(PayWay record);

    PayWay selectByPrimaryKey(Integer payWayId);

    int updateByPrimaryKeySelective(PayWay record);

    int updateByPrimaryKey(PayWay record);
}