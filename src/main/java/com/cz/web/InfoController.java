package com.cz.web;

import com.cz.model.Info;
import com.cz.service.InfoService;
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
 * 19:51
 * TO DO What
 */
@Controller
@RequestMapping("/info")
public class InfoController extends BaseController {



    private LogUtils logger = LogUtils.getLogUtils(InfoController.class);

    private static String commonPath="info";

    @Autowired
    private InfoService infoService;


    @RequestMapping(value = "/addPage", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView addInfoPage(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName(this.getPath(commonPath,"add"));
        return modelAndView;
    }

    /**
     * 添加信息
     * @param info
     * @param request
     * @return
     */
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    @ResponseBody
    public Map addInfo(Info info,HttpServletRequest request)
    {
        Map mapResponse = new HashMap();
        try {
            infoService.addInfo(info);
            mapResponse.put("code", 200);
            logger.info("修改信息成功");
        } catch (Exception e) {
            logger.error("修改信息失败" + e);
            mapResponse.put("code", 201);
            e.printStackTrace();
        }
        return mapResponse;
    }

    /**
     * 修改信息信息
     * @param info
     * @return
     */
    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    @ResponseBody
    public Map editInfo(Info info,HttpServletRequest request)
    {
        Map mapResponse = new HashMap();
        try {
            infoService.updateInfo(info);
            mapResponse.put("code", 200);
            logger.info("修改角色信息成功");
        } catch (Exception e) {
            logger.error("修改角色信息失败" + e);
            mapResponse.put("code", 201);
            e.printStackTrace();
        }
        return mapResponse;
    }

    /**
     * 删除信息
     * @param request
     * @param infoId
     * @return
     */
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    @ResponseBody
    public Map deleteInfo(HttpServletRequest request,String infoId){
        Map mapResponse = new HashMap();
        try {
            infoService.deleteInfo(infoId);
            mapResponse.put("code", 200);
            logger.info("删除角色信息成功");
        } catch (Exception e) {
            logger.error("删除角色信息失败" + e);
            mapResponse.put("code", 201);
            e.printStackTrace();
        }
        return mapResponse;
    }

    /**
     * 获取信息信息列表
     * @param info
     * @return
     */
    @RequestMapping(value = "/list", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView listInfo(Info info, String pageNo,HttpServletRequest request) {
        ModelAndView model = new ModelAndView();
        try {
            int num = 1;
            if (pageNo != null && !"".equals(pageNo)) {
                num = Integer.parseInt(pageNo);
            }
            PageUtil<Info> page = new PageUtil<Info>();
            page.setPageNo(num);
            page.setQueryParam(info);
            page = infoService.getAllInfoPageList(page);
            Map<String, Object> map = new HashMap<String, Object>();
            model.addObject(page);
            model.setViewName("/info/info_list");
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
    @RequestMapping(value = "/findInfoList")
    @ResponseBody
    public List<Info> findInfoList(Integer[] ids){
        List<Info> infoList=null;
        if(ids!=null&&ids.length>0){
            // userInfoList=tuserService.findUserList(ids);
        }
        return infoList;
    }

    /**
     * 根据信息ID获取详细信息
     * @param infoId
     * @return
     */
    @RequestMapping(value = "/getInfo", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView getInfo(String infoId) {
        ModelAndView model = new ModelAndView();
        Info info = null;
        try {
            info =  infoService.getInfoById(infoId);
            model.addObject(info);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return model;
    }
}
