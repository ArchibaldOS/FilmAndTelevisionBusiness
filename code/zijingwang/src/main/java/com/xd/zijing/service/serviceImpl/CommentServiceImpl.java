package com.xd.zijing.service.serviceImpl;

import com.xd.zijing.mapper.CommentDao;
import com.xd.zijing.entity.Page;
import com.xd.zijing.entity.Comment;
import com.xd.zijing.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by lenovo on 2017/8/22.
 */
@Service
public class CommentServiceImpl implements CommentService {

    @Autowired
    private CommentDao commentDao;

    @Override
    public Page queryComments(int cur) {
        Page page = new Page(cur);
        int cout = commentDao.count();
        List<Comment> comments = commentDao.findAll(page.getOffset(), page.getSize());

        page.setCount(cout);
        page.setList(comments);

        return page;
    }

    @Override
    public Comment queryById(int commentId) {
        return commentDao.queryById(commentId);
    }

    @Override
    public boolean deleteById(int commentId) {
        return commentDao.deleteById(commentId);
    }
}
