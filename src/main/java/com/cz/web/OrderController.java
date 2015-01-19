package com.cz.web;

import com.cz.model.Order;
import com.cz.service.OrderService;
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
import java.util.Random;

/**
 * Created by ChangYY
 * 2015/1/17
 * 19:59
 * TO DO What
 */
@Controller
@RequestMapping("/order")
public class OrderController extends BaseController {

    private LogUtils logger = LogUtils.getLogUtils(OrderController.class);

    private static String commonPath="order";

    @Autowired
    private OrderService orderService;


    @RequestMapping(value = "/netPayI", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView netPayI(){
        ModelAndView model = new ModelAndView();
        model.setViewName("pay/net/index");
        return model;
    }


    @RequestMapping(value = "/netPay", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView netPay(){
        ModelAndView model = new ModelAndView();
        model.setViewName("pay/net/alipayapi");
        return model;
    }

    @RequestMapping(value = "/zfbPay", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView zfbPay(){
        ModelAndView model = new ModelAndView();
        model.addObject("orderNo",String.valueOf(new Random().nextInt(1000000000)));
        model.addObject("WIDsubject","深入JVM原理第支付宝版");
        model.addObject("WIDtotal_fee","0.01");
        model.addObject("WIDseller_email","texhrc519@126.com");
        model.addObject("WIDbody","中国电子出版社周志明图书");
        model.addObject("WIDshow_url","http://localhost:8080/images/logo.png");
        model.setViewName("pay/zfb/alipayapi");
        return model;
    }

    /**
     * 添加订单
     * @param order
     * @param request
     * @return
     */
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    @ResponseBody
    public Map addOrder(Order order,HttpServletRequest request)
    {
        Map mapResponse = new HashMap();
        try {
            orderService.addOrder(order);
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
     * @param order
     * @return
     */
    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    @ResponseBody
    public Map editOrder(Order order,HttpServletRequest request)
    {
        Map mapResponse = new HashMap();
        try {
            orderService.updateOrder(order);
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
     * @param orderId
     * @return
     */
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    @ResponseBody
    public Map deleteOrder(HttpServletRequest request,String orderId){
        Map mapResponse = new HashMap();
        try {
            orderService.deleteOrder(orderId);
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
    public ModelAndView listOrder(Order order, String pageNo,HttpServletRequest request) {
        ModelAndView model = new ModelAndView();
        try {
            int num = 1;
            if (pageNo != null && !"".equals(pageNo)) {
                num = Integer.parseInt(pageNo);
            }
            PageUtil<Order> page = new PageUtil<Order>();
            page.setPageNo(num);
            page.setQueryParam(order);
            page = orderService.getAllOrderPageList(page);
            Map<String, Object> map = new HashMap<String, Object>();
            model.addObject(page);
            model.setViewName("/order/order_list");
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
    @RequestMapping(value = "/findOrderList")
    @ResponseBody
    public List<Order> findOrderList(Integer[] ids){
        List<Order> orderList=null;
        if(ids!=null&&ids.length>0){
            // userorderList=tuserService.findUserList(ids);
        }
        return orderList;
    }

    /**
     * 根据订单ID获取详细订单
     * @param orderId
     * @return
     */
    @RequestMapping(value = "/getOrder", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView getOrder(String orderId) {
        ModelAndView model = new ModelAndView();
        Order order = null;
        try {
            order =  orderService.getOrderById(orderId);
            model.addObject(order);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return model;
    }
}
