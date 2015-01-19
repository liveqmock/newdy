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

    int addOrder(Order order);

    int deleteOrder(String orderId);

    int updateOrder(Order order);

    Order getOrderById(String orderId);

    PageUtil<Order> getAllOrderPageList(PageUtil<Order> pageUtil);
}
