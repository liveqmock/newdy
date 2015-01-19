package com.cz.web;

import com.cz.model.Notice;
import com.cz.service.NoticeService;
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
@RequestMapping("/notice")
public class NoticeController extends BaseController {

    private LogUtils logger = LogUtils.getLogUtils(NoticeController.class);

    private static String commonPath="notice";

    @Autowired
    private NoticeService noticeService;

    /**
     * 添加公告
     * @param notice
     * @param request
     * @return
     */
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    @ResponseBody
    public Map addNotice(Notice notice,HttpServletRequest request)
    {
        Map mapResponse = new HashMap();
        try {
            noticeService.addNotice(notice);
            mapResponse.put("code", 200);
            logger.info("修改公告成功");
        } catch (Exception e) {
            logger.error("修改公告失败" + e);
            mapResponse.put("code", 201);
            e.printStackTrace();
        }
        return mapResponse;
    }

    /**
     * 修改公告公告
     * @param notice
     * @return
     */
    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    @ResponseBody
    public Map editNotice(Notice notice,HttpServletRequest request)
    {
        Map mapResponse = new HashMap();
        try {
            noticeService.updateNotice(notice);
            mapResponse.put("code", 200);
            logger.info("修改公告成功");
        } catch (Exception e) {
            logger.error("修改公告失败" + e);
            mapResponse.put("code", 201);
            e.printStackTrace();
        }
        return mapResponse;
    }

    /**
     * 删除公告
     * @param request
     * @param noticeId
     * @return
     */
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    @ResponseBody
    public Map deleteNotice(HttpServletRequest request,String noticeId){
        Map mapResponse = new HashMap();
        try {
            noticeService.deleteNotice(noticeId);
            mapResponse.put("code", 200);
            logger.info("删除公告成功");
        } catch (Exception e) {
            logger.error("删除公告失败" + e);
            mapResponse.put("code", 201);
            e.printStackTrace();
        }
        return mapResponse;
    }

    /**
     * 获取公告列表
     * @param notice
     * @return
     */
    @RequestMapping(value = "/list", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView listNotice(Notice notice, String pageNo,HttpServletRequest request) {
        ModelAndView model = new ModelAndView();
        try {
            int num = 1;
            if (pageNo != null && !"".equals(pageNo)) {
                num = Integer.parseInt(pageNo);
            }
            PageUtil<Notice> page = new PageUtil<Notice>();
            page.setPageNo(num);
            page.setQueryParam(notice);
            page = noticeService.getAllNoticePageList(page);
            Map<String, Object> map = new HashMap<String, Object>();
            model.addObject(page);
            model.setViewName("/notice/notice_list");
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
    @RequestMapping(value = "/findNoticeList")
    @ResponseBody
    public List<Notice> findNoticeList(Integer[] ids){
        List<Notice> noticeList=null;
        if(ids!=null&&ids.length>0){
            // userNoticeList=tuserService.findUserList(ids);
        }
        return noticeList;
    }

    /**
     * 根据公告ID获取详细公告
     * @param noticeId
     * @return
     */
    @RequestMapping(value = "/getNotice", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView getNotice(String noticeId) {
        ModelAndView model = new ModelAndView();
        Notice notice = null;
        try {
            notice =  noticeService.getNoticeById(noticeId);
            model.addObject(notice);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return model;
    }
}
