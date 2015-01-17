package com.cz.service.impl;

import com.cz.dao.ProductDao;
import com.cz.model.Product;
import com.cz.service.ProductService;
import com.cz.utils.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by ChangYY
 * 2015/1/17
 * 21:35
 * TO DO What
 */
public class ProductServiceImpl implements ProductService {

    @Autowired
    ProductDao productDao;

    @Override
    public int addProduct(Product product) {
        return productDao.addProduct(product);
    }

    @Override
    public int deleteProduct(String productId) {
        return productDao.deleteProduct(productId);
    }

    @Override
    public int updateProduct(Product product) {
        return productDao.updateProduct(product);
    }

    @Override
    public Product getProductById(String productId) {
        return productDao.getProductById(productId);
    }

    @Override
    public PageUtil<Product> getAllProductPageList(PageUtil<Product> pageUtil) {
        return productDao.getAllProductPageList(pageUtil);
    }
}
