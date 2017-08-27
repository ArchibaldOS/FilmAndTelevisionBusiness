package com.xd.zijing.service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xd.zijing.entity.Article;
import com.xd.zijing.entity.Page;
import com.xd.zijing.mapper.ArticleMapper;
import com.xd.zijing.service.ArticleService;

@Service
public class ArticleServiceImpl implements ArticleService{
	
	@Autowired
	private ArticleMapper articleMapper;

	@Override
	public int insertArticle(Article article) {

		int result = articleMapper.insertArticle(article);
		return result;
	}

	@Override
	public Page getArticles(int cur) {
		
		Page page = new Page(cur);
		
		int count = articleMapper.count();
		
		List<Article> articles = articleMapper.findAll(page.getOffset(), page.getSize());
		
		page.setCount(count);
		page.setList(articles);
		
		return page;
	}

	@Override
	public int delete(int articleId) {
		int result = articleMapper.delete(articleId);
		return result;
	}

	@Override
	public Article findById(int articleId) {
		
		Article article = articleMapper.findById(articleId);
		
		return article;
	}

	@Override
	public int update(Article article) {
		
		int result = articleMapper.update(article);
		
		return result;
	}

}
