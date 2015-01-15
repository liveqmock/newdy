package com.cz.model;

import java.util.Date;

public class DataDictionary {
    private String data_id;

    private String data_name;

    private String data_value;

    private Integer sort;

    private String status;

    private String data_pid;

    private Date edit_time;

    private String editor;

    private String show_left;

    public String getData_id() {
        return data_id;
    }

    public void setData_id(String data_id) {
        this.data_id = data_id == null ? null : data_id.trim();
    }

    public String getData_name() {
        return data_name;
    }

    public void setData_name(String data_name) {
        this.data_name = data_name == null ? null : data_name.trim();
    }

    public String getData_value() {
        return data_value;
    }

    public void setData_value(String data_value) {
        this.data_value = data_value == null ? null : data_value.trim();
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public String getData_pid() {
        return data_pid;
    }

    public void setData_pid(String data_pid) {
        this.data_pid = data_pid == null ? null : data_pid.trim();
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

    public String getShow_left() {
        return show_left;
    }

    public void setShow_left(String show_left) {
        this.show_left = show_left == null ? null : show_left.trim();
    }
}