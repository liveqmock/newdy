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
		// TODO Auto-generated method stub
		HttpServletRequest request=(HttpServletRequest)servletRequest;
		HttpServletResponse response=(HttpServletResponse)servletResponse;
		String servletPath = request.getServletPath();
		if(checkPath(servletPath)){
			filter.doFilter(servletRequest, servletResponse);
		}else{
			//System.out.println("getRequestURL:"+request.getRequestURL().toString());
	        if(StringUtils.isEmpty("session")){
	        	 String loginUrl = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
	             + request.getContextPath() + "/";
		    // System.out.println("loginUrl=====:"+loginUrl);
		     response.sendRedirect(loginUrl);
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
	        pathList.add("index");
	        pathList.add("login");
	        pathList.add("/druid/");
            pathList.add("/css/");
	        pathList.add("/js/");
	        pathList.add("/headimg/");
	        pathList.add("/images/");
	        pathList.add("/image/");
	        pathList.add("/resource/");
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
