package com.cz.service;

import com.cz.model.Tuser;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: ChangYY
 * Date: 15-1-15
 * Time: 上午9:20
 * To change this template use File | Settings | File Templates.
 */
public interface TuserService {

    String addInfo(Tuser addInfo);

    List<Tuser> getAll();

    String delete(String id);

    Tuser findById(String id);

    String update(Tuser addInfo);
}
