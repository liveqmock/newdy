package com.cz.service;

import com.cz.model.Info;
import com.cz.utils.PageUtil;

/**
 * Created by ChangYY
 * 2015/1/17
 * 20:06
 * TO DO What
 */
public interface InfoService {

    int addInfo(Info info);

    int deleteInfo(String infoId);

    int updateInfo(Info info);

    Info getInfoById(String infoId);

    PageUtil<Info> getAllInfoPageList(PageUtil<Info> pageUtil);
}
