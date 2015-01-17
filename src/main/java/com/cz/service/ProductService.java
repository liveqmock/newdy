package com.cz.service;

import com.cz.model.Product;
import com.cz.utils.PageUtil;

/**
 * Created by ChangYY
 * 2015/1/17
 * 20:07
 * TO DO What
 */
public interface ProductService {

    int addProduct(Product product);

    int deleteProduct(String productId);

    int updateProduct(Product product);

    Product getProductById(String productId);

    PageUtil<Product> getAllProductPageList(PageUtil<Product> pageUtil);
}
