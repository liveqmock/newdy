package com.cz.service.impl;

import com.cz.dao.TuserDao;
import com.cz.model.Tuser;
import com.cz.service.TuserService;
import com.cz.utils.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: ChangYY
 * Date: 15-1-15
 * Time: 上午9:21
 * To change this template use File | Settings | File Templates.
 */
@Service("tuserService")
public class TuserServiceImpl implements TuserService {

    @Autowired
    TuserDao tuserDao;

    @Override
    public int addTuser(Tuser tuser) {
        return tuserDao.addTuser(tuser);
    }

    @Override
    public int deleteTuser(String tuserId) {
        return tuserDao.deleteTuser(Integer.parseInt(tuserId));
    }

    @Override
    public int updateTuser(Tuser tuser) {
        return tuserDao.updateTuser(tuser);
    }

    @Override
    public Tuser getTuserById(String tuserId) {
        return tuserDao.getTuserById(Integer.parseInt(tuserId));
    }

    @Override
    public PageUtil<Tuser> getAllTuserPageList(PageUtil<Tuser> pageUtil) {
        List<Tuser> list=tuserDao.getAllTuserPageList(pageUtil);
        int total=tuserDao.getTuserTotalCount(pageUtil);
        pageUtil.setTotalRecord(total);
        pageUtil.setResults(list);
        return pageUtil;
    }

    @Override
    public Tuser getTuserByUserName(String userName) {
        return tuserDao.getTuserByUserName(userName);
    }
}
