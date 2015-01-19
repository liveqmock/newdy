package com.cz.dao;

import com.cz.model.Order;
import com.cz.utils.PageUtil;

public interface OrderDao {

    int addPayRecord(Order payRecord);

    int deletePayRecord(String payRecordId);

    int updatePayRecord(Order payRecord);

    Order getPayRecordById(String payRecordId);

    PageUtil<Order> getAllPayRecordPageList(PageUtil<Order> pageUtil);
}