package com.cz.service;

import com.cz.model.PayRecord;
import com.cz.utils.PageUtil;

/**
 * Created by ChangYY
 * 2015/1/17
 * 20:09
 * TO DO What
 */
public interface PayRecordService {

    int addPayRecord(PayRecord payRecord);

    int deletePayRecord(String payRecordId);

    int updatePayRecord(PayRecord payRecord);

    PayRecord getPayRecordById(String payRecordId);

    PageUtil<PayRecord> getAllPayRecordPageList(PageUtil<PayRecord> pageUtil);
}
