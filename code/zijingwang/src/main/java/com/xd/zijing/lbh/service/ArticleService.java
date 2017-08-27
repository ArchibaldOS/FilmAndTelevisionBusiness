package com.xd.zijing.lbh.service;

import com.xd.zijing.lbh.entity.Article;
import com.xd.zijing.lbh.entity.Page;

public interface ArticleService {
	
	int insertArticle(Article article);

	Page getArticles(int cur);

	int delete(int articleId);

	Article findById(int articleId);

	int update(Article article);
	
}
