package com.cz.service;

import com.cz.model.Dictionary;
import com.cz.utils.PageUtil;

/**
 * Created by ChangYY
 * 2015/1/17
 * 20:06
 * TO DO What
 */
public interface DictionaryService {

    int addDictionary(Dictionary dictionary);

    int deleteDictionary(String dictionaryId);

    int updateDictionary(Dictionary dictionary);

    Dictionary getDictionaryById(String dictionaryId);

    PageUtil<Dictionary> getAllDictionaryPageList(PageUtil<Dictionary> pageUtil);
}
