package com.cz.service.impl;

import com.cz.dao.NoticeDao;
import com.cz.model.Notice;
import com.cz.service.NoticeService;
import com.cz.utils.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by ChangYY
 * 2015/1/17
 * 21:29
 * TO DO What
 */
@Service("noticeService")
public class NoticeServiceImpl implements NoticeService {
    @Autowired
    NoticeDao noticeDao;

    @Override
    public int addNotice(Notice notice) {
        return noticeDao.addNotice(notice);
    }

    @Override
    public int deleteNotice(String noticeId) {
        return noticeDao.deleteNotice(noticeId);
    }

    @Override
    public int updateNotice(Notice notice) {
        return noticeDao.updateNotice(notice);
    }

    @Override
    public Notice getNoticeById(String noticeId) {
        return noticeDao.getNoticeById(noticeId);
    }

    @Override
    public PageUtil<Notice> getAllNoticePageList(PageUtil<Notice> pageUtil) {
        return noticeDao.getAllNoticePageList(pageUtil);
    }
}
