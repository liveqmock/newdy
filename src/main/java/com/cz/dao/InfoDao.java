package com.cz.dao;

import com.cz.model.Info;
import com.cz.utils.PageUtil;

import java.util.List;

public interface InfoDao {

    int addInfo(Info info);

    int deleteInfo(String infoId);

    int updateInfo(Info info);

    Info getInfoById(String infoId);

    List<Info> getAllInfoPageList(PageUtil<Info> pageUtil);
}