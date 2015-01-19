package com.cz.dao;

import com.cz.model.Info;
import com.cz.utils.PageUtil;

public interface InfoDao {

    int addInfo(Info info);

    int deleteInfo(String infoId);

    int updateInfo(Info info);

    Info getInfoById(String infoId);

    PageUtil<Info> getAllInfoPageList(PageUtil<Info> pageUtil);
}