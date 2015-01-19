package com.cz.web;

import com.cz.model.PayRecord;
import com.cz.service.PayRecordService;
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
 * 19:59
 * TO DO What
 */
@Controller
@RequestMapping("/pay")
public class PayRecordController extends BaseController {

    private LogUtils logger = LogUtils.getLogUtils(PayRecordController.class);

    private static String commonPath="payRecord";

    @Autowired
    private PayRecordService payRecordService;

    /**
     * 添加订单
     * @param payRecord
     * @param request
     * @return
     */
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    @ResponseBody
    public Map addPayRecord(PayRecord payRecord,HttpServletRequest request)
    {
        Map mapResponse = new HashMap();
        try {
            payRecordService.addPayRecord(payRecord);
            mapResponse.put("code", 200);
            logger.info("修改订单成功");
        } catch (Exception e) {
            logger.error("修改订单失败" + e);
            mapResponse.put("code", 201);
            e.printStackTrace();
        }
        return mapResponse;
    }

    /**
     * 修改订单订单
     * @param payRecord
     * @return
     */
    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    @ResponseBody
    public Map editPayRecord(PayRecord payRecord,HttpServletRequest request)
    {
        Map mapResponse = new HashMap();
        try {
            payRecordService.updatePayRecord(payRecord);
            mapResponse.put("code", 200);
            logger.info("修改订单成功");
        } catch (Exception e) {
            logger.error("修改订单失败" + e);
            mapResponse.put("code", 201);
            e.printStackTrace();
        }
        return mapResponse;
    }

    /**
     * 删除订单
     * @param request
     * @param payRecordId
     * @return
     */
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    @ResponseBody
    public Map deletePayRecord(HttpServletRequest request,String payRecordId){
        Map mapResponse = new HashMap();
        try {
            payRecordService.deletePayRecord(payRecordId);
            mapResponse.put("code", 200);
            logger.info("删除订单成功");
        } catch (Exception e) {
            logger.error("删除订单失败" + e);
            mapResponse.put("code", 201);
            e.printStackTrace();
        }
        return mapResponse;
    }

    /**
     * 获取订单列表
     * @param payRecord
     * @return
     */
    @RequestMapping(value = "/list", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView listPayRecord(PayRecord payRecord, String pageNo,HttpServletRequest request) {
        ModelAndView model = new ModelAndView();
        try {
            int num = 1;
            if (pageNo != null && !"".equals(pageNo)) {
                num = Integer.parseInt(pageNo);
            }
            PageUtil<PayRecord> page = new PageUtil<PayRecord>();
            page.setPageNo(num);
            page.setQueryParam(payRecord);
            page = payRecordService.getAllPayRecordPageList(page);
            Map<String, Object> map = new HashMap<String, Object>();
            model.addObject(page);
            model.setViewName("/payRecord/payRecord_list");
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
    @RequestMapping(value = "/findPayRecordList")
    @ResponseBody
    public List<PayRecord> findPayRecordList(Integer[] ids){
        List<PayRecord> payRecordList=null;
        if(ids!=null&&ids.length>0){
            // userPayRecordList=tuserService.findUserList(ids);
        }
        return payRecordList;
    }

    /**
     * 根据订单ID获取详细订单
     * @param payRecordId
     * @return
     */
    @RequestMapping(value = "/getPayRecord", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView getPayRecord(String payRecordId) {
        ModelAndView model = new ModelAndView();
        PayRecord payRecord = null;
        try {
            payRecord =  payRecordService.getPayRecordById(payRecordId);
            model.addObject(payRecord);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return model;
    }
}
