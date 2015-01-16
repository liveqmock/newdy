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
    public int addInfo(Tuser tuser) {
        return tuserDao.insert(tuser);
    }

    @Override
    public PageUtil<Tuser> getAllTuserPageList(PageUtil<Tuser> pageUtil) {
        List<Tuser> list=tuserDao.getAllTuserPageList(pageUtil);
        int total=tuserDao.getAllTuserTotal(pageUtil);
        pageUtil.setTotalRecord(total);
        pageUtil.setResults(list);
        return pageUtil;
    }

    @Override
    public int delete(String id) {
        return tuserDao.deleteByPrimaryKey(Integer.parseInt(id));
    }

    @Override
    public Tuser findById(String id) {
        return tuserDao.selectByPrimaryKey(Integer.parseInt(id));
    }

    @Override
    public int update(Tuser tuser) {
        return tuserDao.updateByPrimaryKey(tuser);
    }
}
