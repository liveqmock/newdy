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
    public String addInfo(Tuser addInfo) {
        return null;  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public PageUtil<Tuser> getAllTuserPageList(PageUtil<Tuser> pageUtil) {
        List<Tuser> list=tuserDao.getAllTuserPageList(pageUtil);
        System.out.println("list======="+list);
        int total=tuserDao.getAllTuserTotal(pageUtil);
        System.out.println("total======="+total);
        pageUtil.setTotalRecord(total);
        pageUtil.setResults(list);
        return pageUtil;
    }

    @Override
    public String delete(String id) {
        return null;  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public Tuser findById(String id) {
        return null;  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public String update(Tuser addInfo) {
        return null;  //To change body of implemented methods use File | Settings | File Templates.
    }
}
