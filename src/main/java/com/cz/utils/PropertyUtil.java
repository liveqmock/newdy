package com.cz.utils;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * Created by ChangYY
 * 2015-01-16
 * 10:02
 * TO DO What
 */
public class PropertyUtil {

    public static String getPropertiesByName(String proName,String fileName){
        Properties prop = new Properties();
        InputStream is = PropertyUtil.class.getResourceAsStream("/resource/" +fileName+".properties");
        try {
            prop.load(is);
        } catch (IOException e) {
            // TODO Auto-generated catch block
            System.out.println(fileName+"文件加载异常");
        }
        return prop.getProperty(proName);
    }
}
