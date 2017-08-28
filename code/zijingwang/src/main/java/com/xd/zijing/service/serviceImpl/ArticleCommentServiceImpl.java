package com.xd.zijing.service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xd.zijing.entity.ArticleComment;
import com.xd.zijing.entity.Page;
import com.xd.zijing.mapper.ArticleCommentMapper;
import com.xd.zijing.service.ArticleCommentService;

@Service
public class ArticleCommentServiceImpl implements ArticleCommentService {

	@Autowired
	private ArticleCommentMapper articleCommentMapper;
	
	@Override
	public Page getComments(int cur) {
		Page page = new Page(cur);
		int count = articleCommentMapper.count();
		List<ArticleComment> comments = articleCommentMapper.findAll(page.getOffset(), page.getSize());
		
		page.setCount(count);
		page.setList(comments);
		return page;
	}

	@Override
	public int delete(int commentId) {
		int result = articleCommentMapper.delete(commentId);
		return result;
	}

	@Override
	public Page findById(int articleId,int cur) {
		Page page = new Page(cur);
		int count = articleCommentMapper.countById(articleId);
		List<ArticleComment> comments = articleCommentMapper.findAllById(articleId,page.getOffset(), page.getSize());
		page.setCount(count);
		page.setList(comments);
		return page;
	}

}
