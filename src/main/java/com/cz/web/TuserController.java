package com.cz.web;

import com.cz.model.Tuser;
import com.cz.service.TuserService;
import com.cz.utils.BaseController;
import com.cz.utils.LogUtils;
import com.cz.utils.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

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
     * 跳转到首页
     * @return
     */
    @RequestMapping(value = "/homePage")
    public ModelAndView homePage(Tuser tuser,String pageNo) {
        int num = 1;
        if (pageNo != null && !"".equals(pageNo)) {
            num = Integer.parseInt(pageNo);
        }
        tuser.setSex("1");
        PageUtil<Tuser> page=new PageUtil<Tuser>();
        page.setPageNo(num);
        page.setQueryParam(tuser);
        page = tuserService.getAllTuserPageList(page);
        ModelAndView model = new ModelAndView();
        logger.info("getResults===="+page.getResults());
        logger.info("getTotalRecord===="+page.getTotalRecord());
        model.addObject(page);
        model.addObject("rd","rdxxxxxxxxx");
        model.setViewName(getPath(commonPath, "users"));
        return model;
    }
}
