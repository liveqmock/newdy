package com.cz.model;

import java.io.Serializable;

public class OrderDetail implements Serializable {
    private Integer id;

    private Integer payRecordId;

    private Integer productId;

    private String productType;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPayRecordId() {
        return payRecordId;
    }

    public void setPayRecordId(Integer payRecordId) {
        this.payRecordId = payRecordId;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public String getProductType() {
        return productType;
    }

    public void setProductType(String productType) {
        this.productType = productType == null ? null : productType.trim();
    }
}