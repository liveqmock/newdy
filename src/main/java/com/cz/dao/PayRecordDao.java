package com.cz.dao;

import com.cz.model.PayRecord;
import com.cz.utils.PageUtil;

public interface PayRecordDao {

    int addPayRecord(PayRecord payRecord);

    int deletePayRecord(String payRecordId);

    int updatePayRecord(PayRecord payRecord);

    PayRecord getPayRecordById(String payRecordId);

    PageUtil<PayRecord> getAllPayRecordPageList(PageUtil<PayRecord> pageUtil);
}