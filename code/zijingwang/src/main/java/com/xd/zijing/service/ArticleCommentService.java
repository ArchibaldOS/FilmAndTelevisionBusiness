package com.xd.zijing.service;


import com.xd.zijing.entity.Page;

public interface ArticleCommentService {

	Page getComments(int cur);

	int delete(int commentId);

	Page findById(int articleId,int cur);

}
