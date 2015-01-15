package com.cz.utils;

import org.apache.log4j.Logger;

/**
 * Created with IntelliJ IDEA.
 * User: ChangYY
 * Date: 15-1-15
 * Time: 上午9:44
 * 日志工具类的封装
 */
public class LogUtils {

    private static Logger logger;
    private static LogUtils logUtils;

    private LogUtils(){
        logUtils = new LogUtils();
    }

    public static LogUtils getLogUtils(Class c){
        logger = Logger.getLogger(c.getClass());
        return logUtils;
    }

    public static void info(String msg){
        logger.info(msg);
    }

    public static void info(String msg,boolean flag){
        if(flag){
            logger.info(msg);
        }
    }

    public static void debug(String msg){
        logger.debug(msg);
    }

    public static void debug(String msg,boolean flag){
        if(flag){
            logger.debug(msg);
        }
    }


    public static void error(String msg){
        logger.error(msg);
    }

    public static void error(String msg,boolean flag){
        if(flag){
            logger.error(msg);
        }
    }

    public static void info(String msg,Throwable throwable){
        logger.info(msg,throwable);
    }

    public static void debug(String msg,Throwable throwable){
        logger.debug(msg, throwable);
    }

    public static void error(String msg,Throwable throwable){
        logger.error(msg, throwable);
    }
}
