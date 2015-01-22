package com.cz.page;

import java.util.List;

/**
 * Created by qilei on 2014/9/1.
 */
public class PagedResult<T> {
    private List<T> list;
    private Paging paging = new Paging();
    private int totalRecords = 0;// 总条数

    public PagedResult(List<T> list, int totalRecords, Paging paging) {
        this.list = list;
        this.totalRecords = totalRecords;
        this.paging = paging;
    }

    /**
     * 总页数
     *
     * @return
     */
    public int getTotalPages() {
        return (int) Math.ceil(totalRecords / paging.getPageSize());
    }

    /**
     * 当前条数
     *
     * @return
     */
    public int getCurrentRecord() {
        return list.size();
    }

    public List<T> getList() {
        return list;
    }

    public void setList(List<T> list) {
        this.list = list;
    }

    public Paging getPaging() {
        return paging;
    }

    public void setPaging(Paging paging) {
        this.paging = paging;
    }

    public int getTotalRecords() {
        return totalRecords;
    }

    public void setTotalRecords(int totalRecords) {
        this.totalRecords = totalRecords;
    }
}
