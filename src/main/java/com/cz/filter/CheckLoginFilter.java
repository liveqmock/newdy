/**
 * 
 */
package com.cz.filter;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cz.model.Tuser;
import com.cz.utils.Constant;
import org.springframework.stereotype.Service;

import com.alibaba.druid.util.StringUtils;

/**
 * @author hyrt001
 *
 */
@Service("myFilter")
public class CheckLoginFilter implements Filter {

    /**
     *
     */
	public void destroy() {
		// TODO Auto-generated method stub

	}

    /**
     *
     * @param servletRequest
     * @param servletResponse
     * @param filter
     * @throws IOException
     * @throws ServletException
     */
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse,
			FilterChain filter) throws IOException, ServletException {
		HttpServletRequest request=(HttpServletRequest)servletRequest;
		HttpServletResponse response=(HttpServletResponse)servletResponse;
		System.out.println("getRequestURL=========:"+request.getRequestURL().toString());
		String servletPath = request.getServletPath();
		System.out.println("servletPath========:"+servletPath);
		if(checkPath(servletPath)){
			filter.doFilter(servletRequest, servletResponse);
		}else{
			Tuser tuser = (Tuser)request.getSession().getAttribute(Constant.USERINFO);
			System.out.println("tuser======="+tuser);
	        if(tuser==null){
	        	 String timeoutPage = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
	             + request.getContextPath() + "/timeout.jsp";
				// request.getSession(true).removeAttribute("validateCode");
		     response.sendRedirect(timeoutPage);
				//response.getWriter().write("<scprit>window.top.location = "+basePath+"</script>");
	        }else{
                filter.doFilter(servletRequest, servletResponse);
	        }
		}
		
	}

	 public boolean checkPath(String servletPath){
	        if(StringUtils.isEmpty(servletPath)){
	            return false;
	        }
	        if(servletPath.indexOf("?")>-1){
	            servletPath=servletPath.substring(0,servletPath.indexOf("?")-1);
	        }
	        List<String> pathList=new ArrayList<String>();
	        pathList.add("/userLogin");
		    pathList.add("/login.jsp");
		    pathList.add("/timeout.jsp");
	        pathList.add("/druid");
            pathList.add("/css/");
	        pathList.add("/js/");
	        pathList.add("/headimg/");
	        pathList.add("/image/");
		    pathList.add("/getImage");
	        boolean flag=false;
	        for(String path:pathList){
	            if(servletPath.indexOf(path.trim())>-1){
	                flag=true;
	                break;
	            }
	        }
	        return flag;

	    }

	/* (non-Javadoc)
	 * @see javax.servlet.Filter#init(javax.servlet.FilterConfig)
	 */
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
