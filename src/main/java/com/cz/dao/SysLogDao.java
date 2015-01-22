package com.cz.dao;

import com.cz.model.Info;
import com.cz.model.SysLog;
import java.util.List;

import com.cz.utils.PageUtil;

public interface SysLogDao {

    int addSysLog(SysLog sysLog);

    int deleteSysLog(String sysLogId);

    int updateSysLog(SysLog sysLog);

    SysLog getSysLogById(String sysLogId);

    List<SysLog> getAllSysLogPageList(PageUtil<SysLog> pageUtil);
}