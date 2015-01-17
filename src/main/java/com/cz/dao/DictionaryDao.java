package com.cz.dao;

import com.cz.model.Dictionary;
import com.cz.utils.PageUtil;

public interface DictionaryDao {

    int addDictionary(Dictionary dictionary);

    int deleteDictionary(String dictionaryId);

    int updateDictionary(Dictionary dictionary);

    Dictionary getDictionaryById(String dictionaryId);

    PageUtil<Dictionary> getAllDictionaryPageList(PageUtil<Dictionary> pageUtil);
}