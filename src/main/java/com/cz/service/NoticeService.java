package com.cz.service;

import com.cz.model.Notice;
import com.cz.utils.PageUtil;

/**
 * Created by ChangYY
 * 2015/1/17
 * 20:07
 * TO DO What
 */
public interface NoticeService {

    int addNotice(Notice notice);

    int deleteNotice(String noticeId);

    int updateNotice(Notice notice);

    Notice getNoticeById(String noticeId);

    PageUtil<Notice> getAllNoticePageList(PageUtil<Notice> pageUtil);
}
