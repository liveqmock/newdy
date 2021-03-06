package com.cz.dao;

import com.cz.model.Product;
import com.cz.utils.PageUtil;

public interface ProductDao {

    int addProduct(Product product);

    int deleteProduct(String productId);

    int updateProduct(Product product);

    Product getProductById(String productId);

    PageUtil<Product> getAllProductPageList(PageUtil<Product> pageUtil);
}