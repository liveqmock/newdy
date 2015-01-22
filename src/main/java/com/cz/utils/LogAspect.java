package com.cz.utils;

import com.cz.service.SysLogService;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by ChangYY
 * 2015-01-22
 * 13:36
 * TO DO What
 */
@Aspect
public class LogAspect {

    @Autowired
    SysLogService sysLogService;

    @Autowired
    HttpServletRequest request;

    /**
     * 系统操作日志
     * @param point
     */
    @After("execution(public * com.cz.service.impl.*Impl.*(..))")
    public void doAfterSystem(JoinPoint point) {
        try {
            String methodName = point.getSignature().getName();
            String className = point.getTarget().getClass().getSimpleName();

        } catch (Exception e) {
            // TODO Auto-generated catch block
            System.out.println("异常："+e.getMessage());
        }
    }

    /**
     * 业务操作
     * @param point
     */
    @After("execution(public * com.cz.service.impl.*Impl.*(..))")
    public void doAfterBusiness(JoinPoint point) {
        try {
            String methodName = point.getSignature().getName();
            String className = point.getTarget().getClass().getSimpleName();

        } catch (Exception e) {
            // TODO Auto-generated catch block
            System.out.println("异常："+e.getMessage());
        }
    }


    /**
     * 平台访问日志
     * @param point
     */
    @After("execution(public * com.cz.service.impl.*Impl.*(..))")
    public void doAfterLogin(JoinPoint point) {
        try {
            String methodName = point.getSignature().getName();
            String className = point.getTarget().getClass().getSimpleName();

        } catch (Exception e) {
            // TODO Auto-generated catch block
            System.out.println("异常："+e.getMessage());
        }
    }

}
