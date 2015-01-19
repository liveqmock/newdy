package com.cz.service;

import com.cz.model.Order;
import com.cz.utils.PageUtil;

/**
 * Created by ChangYY
 * 2015/1/17
 * 20:09
 * TO DO What
 */
public interface OrderService {

    int addPayRecord(Order payRecord);

    int deletePayRecord(String payRecordId);

    int updatePayRecord(Order payRecord);

    Order getPayRecordById(String payRecordId);

    PageUtil<Order> getAllPayRecordPageList(PageUtil<Order> pageUtil);
}
