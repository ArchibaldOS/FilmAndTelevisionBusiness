package com.xd.zijing.service;

import com.xd.zijing.entity.Page;
import com.xd.zijing.entity.Comment;

/**
 * Created by lenovo on 2017/8/22.
 */
public interface CommentService {

    Page queryComments(int cur);

    Comment queryById(int commentId);

    boolean deleteById(int commentId);

    boolean addComment(Comment comment);

    boolean updateComment(Comment comment);
}
