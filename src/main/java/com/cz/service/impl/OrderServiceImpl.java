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
    OrderDao payRecordDao;
    @Override
    public int addPayRecord(Order payRecord) {
        return payRecordDao.addPayRecord(payRecord);
    }

    @Override
    public int deletePayRecord(String payRecordId) {
        return payRecordDao.deletePayRecord(payRecordId);
    }

    @Override
    public int updatePayRecord(Order payRecord) {
        return payRecordDao.updatePayRecord(payRecord);
    }

    @Override
    public Order getPayRecordById(String payRecordId) {
        return payRecordDao.getPayRecordById(payRecordId);
    }

    @Override
    public PageUtil<Order> getAllPayRecordPageList(PageUtil<Order> pageUtil) {
        return payRecordDao.getAllPayRecordPageList(pageUtil);
    }
}
