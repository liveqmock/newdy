package com.cz.dao;

import com.cz.model.Tuser;
import java.util.List;

import com.cz.utils.PageUtil;
public interface TuserDao {

    int addTuser(Tuser tuser);

    int deleteTuser(Integer tuserId);

    int updateTuser(Tuser tuser);

    Tuser getTuserById(Integer tuserId);

    List<Tuser> getAllTuserPageList(PageUtil<Tuser> pageUtil);

    Tuser getTuserByUserName(String userName);

    int getTuserTotalCount(PageUtil<Tuser> pageUtil);

}