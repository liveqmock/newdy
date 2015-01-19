package com.cz.dao;

import com.cz.model.OrderWay;

public interface OrderWayDao {

    int deleteByPrimaryKey(Integer payWayId);

    int insert(OrderWay record);

    int insertSelective(OrderWay record);

    OrderWay selectByPrimaryKey(Integer payWayId);

    int updateByPrimaryKeySelective(OrderWay record);

    int updateByPrimaryKey(OrderWay record);
}