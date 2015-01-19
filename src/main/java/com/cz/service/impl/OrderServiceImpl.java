package com.cz.service.impl;

import com.cz.dao.OrderDao;
import com.cz.model.Order;
import com.cz.service.OrderService;
import com.cz.utils.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by ChangYY
 * 2015/1/17
 * 21:32
 * TO DO What
 */
@Service("payRecordService")
public class OrderServiceImpl implements OrderService {

    @Autowired
    OrderDao orderDao;
    @Override
    public int addOrder(Order order) {
        return orderDao.addOrder(order);
    }

    @Override
    public int deleteOrder(String orderId) {
        return orderDao.deleteOrder(orderId);
    }

    @Override
    public int updateOrder(Order order) {
        return orderDao.updateOrder(order);
    }

    @Override
    public Order getOrderById(String orderId) {
        return orderDao.getOrderById(orderId);
    }

    @Override
    public PageUtil<Order> getAllOrderPageList(PageUtil<Order> pageUtil) {
        return orderDao.getAllOrderPageList(pageUtil);
    }
}
