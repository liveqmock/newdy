package com.cz.service.impl;

import com.cz.dao.DictionaryDao;
import com.cz.service.DictionaryService;
import com.cz.utils.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import com.cz.model.Dictionary;
/**
 * Created by ChangYY
 * 2015/1/17
 * 21:00
 * TO DO What
 */
public class DictionaryServiceImpl implements DictionaryService {

    @Autowired
    DictionaryDao dictionaryDao;


    @Override
    public int addDictionary(Dictionary dictionary) {
        return dictionaryDao.addDictionary(dictionary);
    }

    @Override
    public int deleteDictionary(String dictionaryId) {
        return dictionaryDao.deleteDictionary(dictionaryId);
    }

    @Override
    public int updateDictionary(Dictionary dictionary) {
        return dictionaryDao.updateDictionary(dictionary);
    }

    @Override
    public Dictionary getDictionaryById(String dictionaryId) {
        return dictionaryDao.getDictionaryById(dictionaryId);
    }

    @Override
    public PageUtil<Dictionary> getAllDictionaryPageList(PageUtil<Dictionary> pageUtil) {
        return dictionaryDao.getAllDictionaryPageList(pageUtil);
    }
}
