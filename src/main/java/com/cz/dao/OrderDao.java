package com.cz.dao;

import com.cz.model.Order;
import com.cz.utils.PageUtil;

public interface OrderDao {

    int addOrder(Order order);

    int deleteOrder(String orderId);

    int updateOrder(Order order);

    Order getOrderById(String orderId);

    PageUtil<Order> getAllOrderPageList(PageUtil<Order> pageUtil);
}