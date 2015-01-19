package com.cz.web;

import com.cz.model.Product;
import com.cz.service.ProductService;
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
 * 2015/1/17
 * 19:51
 * TO DO What
 */
@Controller
@RequestMapping("/product")
public class ProductController extends BaseController {

    private LogUtils logger = LogUtils.getLogUtils(ProductController.class);

    private static String commonPath="product";

    @Autowired
    private ProductService productService;

    /**
     * 添加产品
     * @param product
     * @param request
     * @return
     */
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    @ResponseBody
    public Map addProduct(Product product,HttpServletRequest request)
    {
        Map mapResponse = new HashMap();
        try {
            productService.addProduct(product);
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
     * 修改产品信息
     * @param product
     * @return
     */
    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    @ResponseBody
    public Map editProduct(Product product,HttpServletRequest request)
    {
        Map mapResponse = new HashMap();
        try {
            productService.updateProduct(product);
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
     * 删除产品
     * @param request
     * @param productId
     * @return
     */
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    @ResponseBody
    public Map deleteProduct(HttpServletRequest request,String productId){
        Map mapResponse = new HashMap();
        try {
            productService.deleteProduct(productId);
            mapResponse.put("code", 200);
            logger.info("删除角色信息成功");
        } catch (Exception e) {
            logger.error("删除角色信息失败" + e);
            mapResponse.put("code", 201);
            e.printStackTrace();
        }
        return mapResponse;
    }

    /**
     * 获取产品信息列表
     * @param product
     * @return
     */
    @RequestMapping(value = "/list", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView listProduct(Product product, String pageNo,HttpServletRequest request) {
        ModelAndView model = new ModelAndView();
        try {
            int num = 1;
            if (pageNo != null && !"".equals(pageNo)) {
                num = Integer.parseInt(pageNo);
            }
            PageUtil<Product> page = new PageUtil<Product>();
            page.setPageNo(num);
            page.setQueryParam(product);
            page = productService.getAllProductPageList(page);
            Map<String, Object> map = new HashMap<String, Object>();
            model.addObject(page);
            model.setViewName("/product/product_list");
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
    @RequestMapping(value = "/findProductList")
    @ResponseBody
    public List<Product> findProductList(Integer[] ids){
        List<Product> productList=null;
        if(ids!=null&&ids.length>0){
            // userInfoList=tuserService.findUserList(ids);
        }
        return productList;
    }

    /**
     * 根据产品ID获取详细信息
     * @param productId
     * @return
     */
    @RequestMapping(value = "/getProduct", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView getProduct(String productId) {
        ModelAndView model = new ModelAndView();
        Product product = null;
        try {
            product =  productService.getProductById(productId);
            model.addObject(product);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return model;
    }
}
