package com.cz.service.impl;

import com.cz.dao.PayRecordDao;
import com.cz.model.PayRecord;
import com.cz.service.PayRecordService;
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
public class PayRecordServiceImpl implements PayRecordService {

    @Autowired
    PayRecordDao payRecordDao;
    @Override
    public int addPayRecord(PayRecord payRecord) {
        return payRecordDao.addPayRecord(payRecord);
    }

    @Override
    public int deletePayRecord(String payRecordId) {
        return payRecordDao.deletePayRecord(payRecordId);
    }

    @Override
    public int updatePayRecord(PayRecord payRecord) {
        return payRecordDao.updatePayRecord(payRecord);
    }

    @Override
    public PayRecord getPayRecordById(String payRecordId) {
        return payRecordDao.getPayRecordById(payRecordId);
    }

    @Override
    public PageUtil<PayRecord> getAllPayRecordPageList(PageUtil<PayRecord> pageUtil) {
        return payRecordDao.getAllPayRecordPageList(pageUtil);
    }
}
