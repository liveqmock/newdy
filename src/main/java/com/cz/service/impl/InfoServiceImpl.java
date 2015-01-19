package com.cz.service.impl;

import com.cz.dao.InfoDao;
import com.cz.model.Info;
import com.cz.service.InfoService;
import com.cz.utils.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by ChangYY
 * 2015/1/17
 * 21:15
 * TO DO What
 */
@Service("infoService")
public class InfoServiceImpl implements InfoService {

    @Autowired
    InfoDao infoDao;

    @Override
    public int addInfo(Info info) {
        return infoDao.addInfo(info);
    }

    @Override
    public int deleteInfo(String infoId) {
        return infoDao.deleteInfo(infoId);
    }

    @Override
    public int updateInfo(Info info) {
        return infoDao.updateInfo(info);
    }

    @Override
    public Info getInfoById(String infoId) {
        return infoDao.getInfoById(infoId);
    }

    @Override
    public PageUtil<Info> getAllInfoPageList(PageUtil<Info> pageUtil) {
        return infoDao.getAllInfoPageList(pageUtil);
    }
}
