package com.cz.model;

import java.util.Date;

public class Order {
    private Integer pay_record_id;

    private Integer user_id;

    private String pay_ip;

    private Integer pay_money;

    private String pay_status;

    private Date pay_date;

    private String pay_order_no;

    private String pay_serial_no;

    private Date edit_time;

    private String editor;

    public Integer getPay_record_id() {
        return pay_record_id;
    }

    public void setPay_record_id(Integer pay_record_id) {
        this.pay_record_id = pay_record_id;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public String getPay_ip() {
        return pay_ip;
    }

    public void setPay_ip(String pay_ip) {
        this.pay_ip = pay_ip == null ? null : pay_ip.trim();
    }

    public Integer getPay_money() {
        return pay_money;
    }

    public void setPay_money(Integer pay_money) {
        this.pay_money = pay_money;
    }

    public String getPay_status() {
        return pay_status;
    }

    public void setPay_status(String pay_status) {
        this.pay_status = pay_status == null ? null : pay_status.trim();
    }

    public Date getPay_date() {
        return pay_date;
    }

    public void setPay_date(Date pay_date) {
        this.pay_date = pay_date;
    }

    public String getPay_order_no() {
        return pay_order_no;
    }

    public void setPay_order_no(String pay_order_no) {
        this.pay_order_no = pay_order_no == null ? null : pay_order_no.trim();
    }

    public String getPay_serial_no() {
        return pay_serial_no;
    }

    public void setPay_serial_no(String pay_serial_no) {
        this.pay_serial_no = pay_serial_no == null ? null : pay_serial_no.trim();
    }

    public Date getEdit_time() {
        return edit_time;
    }

    public void setEdit_time(Date edit_time) {
        this.edit_time = edit_time;
    }

    public String getEditor() {
        return editor;
    }

    public void setEditor(String editor) {
        this.editor = editor == null ? null : editor.trim();
    }
}