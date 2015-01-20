package com.cz.web;

import com.cz.model.Role;
import com.cz.service.RoleService;
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
 * 2015-01-16
 * 16:53
 * TO DO What
 */
@Controller
@RequestMapping("/role")
public class RoleController extends BaseController {

    private LogUtils logger = LogUtils.getLogUtils(RoleController.class);

    private static String commonPath="role";

    @Autowired
    private RoleService roleService;


    @RequestMapping(value = "/index", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView index(){
        ModelAndView model = new ModelAndView();
        model.setViewName(this.getPath(commonPath,"index"));
        return model;
    }


    /**
     * 添加角色
     * @param role
     * @param request
     * @return
     */
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    @ResponseBody
    public Map addRole(Role role,HttpServletRequest request)
    {
        Map mapResponse = new HashMap();
        try {
            roleService.addRole(role);
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
     * 修改角色信息
     * @param role
     * @return
     */
    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    @ResponseBody
    public Map editRole(Role role,HttpServletRequest request)
    {
        Map mapResponse = new HashMap();
        try {
            roleService.updateRole(role);
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
     * 删除角色
     * @param request
     * @param userId
     * @return
     */
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    @ResponseBody
    public String deleteRole(HttpServletRequest request,String userId){
        roleService.deleteRole(userId);
        return "";
    }

    /**
     * 获取角色信息列表
     * @param role
     * @return
     */
    @RequestMapping(value = "/list", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView listRole(Role role, String pageNo,HttpServletRequest request) {
        ModelAndView model = new ModelAndView();
        try {
            int num = 1;
            if (pageNo != null && !"".equals(pageNo)) {
                num = Integer.parseInt(pageNo);
            }
            PageUtil<Role> page = new PageUtil<Role>();
            page.setPageNo(num);
            page.setQueryParam(role);
            page = roleService.getAllRolePageList(page);
            Map<String, Object> map = new HashMap<String, Object>();
            model.addObject(page);
            model.setViewName(this.getPath(commonPath,"list"));
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
    @RequestMapping(value = "/findRoleList")
    @ResponseBody
    public List<Role> findRoleList(Integer[] ids){
        List<Role> roleList=null;
        if(ids!=null&&ids.length>0){
            // userInfoList=tuserService.findUserList(ids);
        }
        return roleList;
    }

    /**
     * 根据角色ID获取详细信息
     * @param roleId
     * @return
     */
    @RequestMapping(value = "/getRole", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView getRole(int roleId) {
        ModelAndView model = new ModelAndView();
        try {

        } catch (Exception e) {
            e.printStackTrace();
        }
        return model;
    }
}
