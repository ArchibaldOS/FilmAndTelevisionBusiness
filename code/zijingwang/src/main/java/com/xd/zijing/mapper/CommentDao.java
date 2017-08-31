package com.xd.zijing.mapper;

import com.xd.zijing.entity.Comment;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by lenovo on 2017/8/22.
 */
public interface CommentDao {

    Comment queryById(int commentId);

    boolean deleteById(int commentId);

    int count();

    List<Comment> findAll(@Param("offset")int offset,@Param("size")int size);

}
