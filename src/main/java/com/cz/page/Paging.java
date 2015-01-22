package com.cz.page;

import com.cz.utils.Constant;
import org.apache.ibatis.session.RowBounds;

public class Paging {
    private Integer page = 1;
    private Integer pageSize = Constant.DEFAULT_PAGE_SIZE;

    public Paging() {
    }

    public Paging(Integer page, Integer pageSize) {
        this.page = page;
        this.pageSize = pageSize;
    }

    public RowBounds getRowBounds() {
        int offset = (page - 1) * Constant.DEFAULT_PAGE_SIZE;
        return new RowBounds(offset, pageSize);
    }


    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }
}
