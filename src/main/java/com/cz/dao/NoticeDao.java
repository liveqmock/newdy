package com.cz.dao;

import com.cz.model.Notice;
import com.cz.utils.PageUtil;

public interface NoticeDao {

    int addNotice(Notice notice);

    int deleteNotice(String noticeId);

    int updateNotice(Notice notice);

    Notice getNoticeById(String noticeId);

    PageUtil<Notice> getAllNoticePageList(PageUtil<Notice> pageUtil);
}