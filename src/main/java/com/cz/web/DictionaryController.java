package com.cz.web;

import com.cz.model.Dictionary;
import com.cz.service.DictionaryService;
import com.cz.utils.BaseController;
import com.cz.utils.LogUtils;
import com.cz.utils.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by ChangYY
 * 2015/1/17
 * 20:01
 * TO DO What
 */
@Controller
@RequestMapping("/dict")
public class DictionaryController extends BaseController{

    private LogUtils logger = LogUtils.getLogUtils(DictionaryController.class);

    private static String commonPath="dictionary";

    @Autowired
    private DictionaryService dictionaryService;

    /**
     * 添加数据字典
     * @param dictionary
     * @param request
     * @return
     */
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    @ResponseBody
    public Map addDictionary(Dictionary dictionary,HttpServletRequest request)
    {
        Map mapResponse = new HashMap();
        try {
            dictionaryService.addDictionary(dictionary);
            mapResponse.put("code", 200);
            logger.info("修改数据字典成功");
        } catch (Exception e) {
            logger.error("修改数据字典失败" + e);
            mapResponse.put("code", 201);
            e.printStackTrace();
        }
        return mapResponse;
    }

    /**
     * 修改数据字典数据字典
     * @param dictionary
     * @return
     */
    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    @ResponseBody
    public Map editDictionary(Dictionary dictionary,HttpServletRequest request)
    {
        Map mapResponse = new HashMap();
        try {
            dictionaryService.updateDictionary(dictionary);
            mapResponse.put("code", 200);
            logger.info("修改数据字典成功");
        } catch (Exception e) {
            logger.error("修改数据字典失败" + e);
            mapResponse.put("code", 201);
            e.printStackTrace();
        }
        return mapResponse;
    }

    /**
     * 删除数据字典
     * @param request
     * @param dictionaryId
     * @return
     */
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    @ResponseBody
    public Map deleteDictionary(HttpServletRequest request,String dictionaryId){
        Map mapResponse = new HashMap();
        try {
            dictionaryService.deleteDictionary(dictionaryId);
            mapResponse.put("code", 200);
            logger.info("删除数据字典成功");
        } catch (Exception e) {
            logger.error("删除数据字典失败" + e);
            mapResponse.put("code", 201);
            e.printStackTrace();
        }
        return mapResponse;
    }

    /**
     * 获取数据字典列表
     * @param dictionary
     * @return
     */
    @RequestMapping(value = "/list", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView listDictionary(Dictionary dictionary, String pageNo,HttpServletRequest request) {
        ModelAndView model = new ModelAndView();
        try {
            int num = 1;
            if (pageNo != null && !"".equals(pageNo)) {
                num = Integer.parseInt(pageNo);
            }
            PageUtil<Dictionary> page = new PageUtil<Dictionary>();
            page.setPageNo(num);
            page.setQueryParam(dictionary);
            page = dictionaryService.getAllDictionaryPageList(page);
            Map<String, Object> map = new HashMap<String, Object>();
            model.addObject(page);
            model.setViewName("/dictionary/dictionary_list");
            return model;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }


    /**
     *
     * @param ids
     * @return
     */
    @RequestMapping(value = "/findDictionaryList")
    @ResponseBody
    public List<Dictionary> findDictionaryList(Integer[] ids){
        List<Dictionary> dictionaryList=null;
        if(ids!=null&&ids.length>0){
            // userDictionaryList=tuserService.findUserList(ids);
        }
        return dictionaryList;
    }

    /**
     * 根据数据字典ID获取详细数据字典
     * @param dictionaryId
     * @return
     */
    @RequestMapping(value = "/getDictionary", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView getDictionary(String dictionaryId) {
        ModelAndView model = new ModelAndView();
        Dictionary dictionary = null;
        try {
            dictionary =  dictionaryService.getDictionaryById(dictionaryId);
            model.addObject(dictionary);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return model;
    }
}
