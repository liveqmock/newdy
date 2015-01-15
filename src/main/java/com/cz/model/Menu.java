package com.cz.model;

import java.io.Serializable;
import java.util.Date;

public class Menu implements Serializable{

    private Integer menu_id;

    private String menu_name;

    private String menu_url;

    private String open_way;

    private Integer parent_id;

    private String status;

    private Date edit_time;

    private String editor;

    private String icon_path;

    private Integer order_num;

    private String item_class;

    private String icon_top_path;

    public Integer getMenu_id() {
        return menu_id;
    }

    public void setMenu_id(Integer menu_id) {
        this.menu_id = menu_id;
    }

    public String getMenu_name() {
        return menu_name;
    }

    public void setMenu_name(String menu_name) {
        this.menu_name = menu_name == null ? null : menu_name.trim();
    }

    public String getMenu_url() {
        return menu_url;
    }

    public void setMenu_url(String menu_url) {
        this.menu_url = menu_url == null ? null : menu_url.trim();
    }

    public String getOpen_way() {
        return open_way;
    }

    public void setOpen_way(String open_way) {
        this.open_way = open_way == null ? null : open_way.trim();
    }

    public Integer getParent_id() {
        return parent_id;
    }

    public void setParent_id(Integer parent_id) {
        this.parent_id = parent_id;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
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

    public String getIcon_path() {
        return icon_path;
    }

    public void setIcon_path(String icon_path) {
        this.icon_path = icon_path == null ? null : icon_path.trim();
    }

    public Integer getOrder_num() {
        return order_num;
    }

    public void setOrder_num(Integer order_num) {
        this.order_num = order_num;
    }

    public String getItem_class() {
        return item_class;
    }

    public void setItem_class(String item_class) {
        this.item_class = item_class == null ? null : item_class.trim();
    }

    public String getIcon_top_path() {
        return icon_top_path;
    }

    public void setIcon_top_path(String icon_top_path) {
        this.icon_top_path = icon_top_path == null ? null : icon_top_path.trim();
    }
}