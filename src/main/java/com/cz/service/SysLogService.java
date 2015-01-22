package com.cz.service;

import com.cz.model.SysLog;
import com.cz.utils.PageUtil;

import java.util.List;

/**
 * Created by ChangYY
 * 2015-01-22
 * 14:09
 * TO DO What
 */
public interface SysLogService {

    int addSysLog(SysLog sysLog);

    int deleteSysLog(String sysLogId);

    int updateSysLog(SysLog sysLog);

    SysLog getSysLogById(String sysLogId);

    List<SysLog> getAllSysLogPageList(PageUtil<SysLog> pageUtil);
}
