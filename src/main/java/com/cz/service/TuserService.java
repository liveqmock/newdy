package com.cz.service;

import com.cz.model.Tuser;
import com.cz.utils.PageUtil;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: ChangYY
 * Date: 15-1-15
 * Time: 上午9:20
 * To change this template use File | Settings | File Templates.
 */
public interface TuserService {

    int addInfo(Tuser tuser);

    PageUtil<Tuser> getAllTuserPageList(PageUtil<Tuser> pageUtil);

    int delete(String id);

    Tuser findById(String id);

    int update(Tuser tuser);

    Tuser getTuserByUserName(String userName);
}
