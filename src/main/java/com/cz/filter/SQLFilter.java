package com.cz.filter;

import org.apache.commons.lang.StringUtils;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.Iterator;

/**
 * Created by ChangYY
 * 2015-01-16
 * 10:09
 * TO DO What
 */
public class SQLFilter implements Filter {


    private static String inj_str = "'|and|exec|insert|select|delete|update|count|*|%|chr|mid|master|truncate|char|declare|; |or|-|+|,";

    protected FilterConfig filterConfig = null;

    public void init(FilterConfig config) throws ServletException {
        this.filterConfig = config;
    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException {
        HttpServletRequest req = (HttpServletRequest) request;
        Iterator values = req.getParameterMap().values().iterator();// 获取所有的表单参数
        while (values.hasNext()) {
            String[] value = (String[]) values.next();
            for (int i = 0; i < value.length; i++) {
                String val = value[i];
                val = this.sql_inj(val);
            }
        }
        try {
            chain.doFilter(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        }
    }

    public String sql_inj(String str) {
        String[] inj_stra = inj_str.split("|");
        for (int i = 0; i < inj_stra.length; i++) {
            if (str.indexOf(" " + inj_stra[i] + " ") >= 0) {
                str = StringUtils.replace(str, " " + inj_stra[i] + " ", "");
            }
        }
        return str;
    }

    public void destroy() {

    }

}
