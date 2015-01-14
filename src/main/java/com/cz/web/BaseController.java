/**
 * 
 */
package com.cz.web;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.web.servlet.ModelAndView;

import com.cz.model.TUserInfo;
import com.cz.utils.Constant;

/**
 * @author hyrt001
 *
 */
public class BaseController {

    private static Logger log= Logger.getLogger(BaseController.class);
    /**
     * 返回转发路径
     * @param commonPath
     * @param pathName
     * @return
     */
    public  String getPath(String commonPath,String pathName){
        if(StringUtils.isEmpty(commonPath)||StringUtils.isEmpty(pathName)){
            return null;
        }
        return commonPath+"/"+pathName;
    }

    /**
     * 返回重定向路径
     * @param commonPath
     * @param pathName
     * @return
     */
    public String getRedirectPath(String commonPath,String pathName) {
        if(StringUtils.isEmpty(commonPath)||StringUtils.isEmpty(pathName)){
            return null;
        }
        commonPath="redirect:"+commonPath;
        return commonPath+"/"+pathName;
    }

    /**
     * 打印map信息
     * @param map
     */
    public void printMap(Map<String,String> map){
        if(map==null||map.size()==0){
            log.info("map信息为空");
            return;
        }
        for(String key:map.keySet()){
            log.info("key:"+key+",value:"+map.get(key));
        }
    }

    /** 基于@ExceptionHandler异常处理 */
   //@ExceptionHandler
    public String exceptionHandler(HttpServletRequest request, Exception exception) {
        request.setAttribute("exception", exception);
        // 根据不同错误转向不同页面
        if(exception instanceof RuntimeException) {
            return "error-business";
        }else {
            return "error";
        }
    }

    public ModelAndView redirectIndex(HttpServletRequest request){
        ModelAndView model=new ModelAndView();
        String sourceUrl=request.getRequestURL().toString();
        request.getSession().setAttribute("sourceUrl",sourceUrl);
       // model.setViewName("redirect:"+ Constant.REDIRECT_LOGIN_ADDRESS);
        return model;
    }

    public String getSourceUrl(HttpServletRequest request){
        String sourceUrl=(String)request.getSession().getAttribute("sourceUrl");
        return sourceUrl;
    }
    
    public TUserInfo getCurrentUser(HttpServletRequest request){
    	TUserInfo userInfo = (TUserInfo)request.getSession().getAttribute(Constant.USERINFO);
        return userInfo;
    }

}
