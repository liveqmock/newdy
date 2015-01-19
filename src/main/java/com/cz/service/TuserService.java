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

    int addTuser(Tuser tuser);

    int deleteTuser(String tuserId);

    int updateTuser(Tuser tuser);

    Tuser getTuserById(String tuserId);

    PageUtil<Tuser> getAllTuserPageList(PageUtil<Tuser> pageUtil);

    Tuser getTuserByUserName(String userName);
}
