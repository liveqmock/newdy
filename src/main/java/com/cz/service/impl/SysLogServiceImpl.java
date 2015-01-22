package com.cz.service.impl;

import com.cz.dao.SysLogDao;
import com.cz.model.SysLog;
import com.cz.service.SysLogService;
import com.cz.utils.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by ChangYY
 * 2015-01-22
 * 14:17
 * TO DO What
 */
@Service("sysLogService")
public class SysLogServiceImpl implements SysLogService{


    @Autowired
    SysLogDao sysLogDao;

    @Override
    public int addSysLog(SysLog sysLog) {
        return sysLogDao.addSysLog(sysLog);
    }

    @Override
    public int deleteSysLog(String sysLogId) {
        return sysLogDao.deleteSysLog(sysLogId);
    }

    @Override
    public int updateSysLog(SysLog sysLog) {
        return sysLogDao.updateSysLog(sysLog);
    }

    @Override
    public SysLog getSysLogById(String sysLogId) {
        return sysLogDao.getSysLogById(sysLogId);
    }

    @Override
    public List<SysLog> getAllSysLogPageList(PageUtil<SysLog> pageUtil) {
        return sysLogDao.getAllSysLogPageList(pageUtil);
    }

}
