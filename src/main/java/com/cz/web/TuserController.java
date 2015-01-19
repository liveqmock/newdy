package com.cz.web;

import com.cz.model.Tuser;
import com.cz.service.TuserService;
import com.cz.utils.BaseController;
import com.cz.utils.LogUtils;
import com.cz.utils.PageUtil;
import org.apache.xmlbeans.impl.values.TypeStoreUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: ChangYY
 * Date: 15-1-15
 * Time: 上午9:25
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping("/tuser")
public class TuserController extends BaseController {

    private LogUtils logger = LogUtils.getLogUtils(TuserController.class);

    private static String commonPath="tuser";

    @Autowired
    private TuserService tuserService;

    /**
     * 修改用户信息
     * @param tuser
     * @return
     */
    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    @ResponseBody
    public Map editTuser(Tuser tuser,HttpServletRequest request)
    {
        Map mapResponse = new HashMap();
        try {
            tuserService.updateTuser(tuser);
            mapResponse.put("code", 200);
            logger.info("修改用户信息成功");
        } catch (Exception e) {
            logger.error("修改用户信息失败" + e);
            mapResponse.put("code", 201);
            e.printStackTrace();
        }
        return mapResponse;
    }

    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    @ResponseBody
    public String deleteUser(HttpServletRequest request,String userId){
        tuserService.deleteTuser(userId);
        return "";
    }
    /**
     * 账户启用
     * @return
     */
    @RequestMapping(value = "/enable", method = RequestMethod.POST)
    @ResponseBody
    public Map enableUser(String ids) {
        Map mapResponse = new HashMap();
        try {
            // tuserService.enableUser(ids);
            mapResponse.put("code", "200");
            logger.info("启用账户成功");
        } catch (Exception e) {
            logger.error("启用账户失败" + e);
            mapResponse.put("code", "201");
            e.printStackTrace();
        }
        return mapResponse;
    }

    /**
     * 账户禁用
     *
     * @return
     */
    @RequestMapping(value = "/disable", method = RequestMethod.POST)
    @ResponseBody
    public Map disableUser(String ids) {
        Map mapResponse = new HashMap();
        try {
            // tuserService.disableUser(ids);
            mapResponse.put("code", "200");
            logger.info("禁用账户成功");
        } catch (Exception e) {
            logger.error("禁用账户成功失败" + e);
            mapResponse.put("code", "201");
            e.printStackTrace();
        }
        return mapResponse;
    }

    /**
     * 获取用户信息列表
     * @param tuser
     * @return
     */
    @RequestMapping(value = "/list", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView listUser(Tuser tuser, String pageNo,HttpServletRequest request) {
        ModelAndView model = new ModelAndView();
        try {
            int num = 1;
            if (pageNo != null && !"".equals(pageNo)) {
                num = Integer.parseInt(pageNo);
            }
            PageUtil<Tuser> page = new PageUtil<Tuser>();
            page.setPageNo(num);
            page.setQueryParam(tuser);
            page = tuserService.getAllTuserPageList(page);
            Map<String, Object> map = new HashMap<String, Object>();
            model.addObject(page);
            model.setViewName("/user/user_result");
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
    @RequestMapping(value = "/findUserList")
    @ResponseBody
    public List<Tuser> findUserList(Integer[] ids){
        List<Tuser> userInfoList=null;
        if(ids!=null&&ids.length>0){
            // userInfoList=tuserService.findUserList(ids);
        }
        return userInfoList;
    }

    /**
     * 导出用户信息
     *
     * @param tuser
     * @return
     */
    @RequestMapping(value = "/export", method = RequestMethod.GET)
    public ModelAndView exportUser(Tuser tuser, HttpServletResponse response) {
        try {
            List<Tuser> list = null; //tuserService.listNoPage(tuser);
            String[] aa = new String[]{"用户名", "姓名", "邮箱", "电话号码", "性别"};
            response.setContentType("application/vnd.ms-excel");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 导入用户信息
     *
     * @param request
     * @return
     */
    @RequestMapping(value = "/import", method = RequestMethod.POST)
    @ResponseBody
    public Map importUser(HttpServletRequest request) {
        Map mapResponse = new HashMap();
        try {
           //  tuserService.importUserInfo(request);
            mapResponse.put("code", 200);
        } catch (Exception e) {
            e.printStackTrace();
            mapResponse.put("code", 201);
        }
        return mapResponse;

    }

    /**
     * 根据用户ID获取用户详细信息
     *
     * @param userId
     * @return
     */
    @RequestMapping(value = "/userInfo", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView userInfo(int userId) {
        ModelAndView model = new ModelAndView();
        try {

        } catch (Exception e) {
            e.printStackTrace();
        }
        return model;
    }

}
