package com.xd.zijing.service;

import com.xd.zijing.entity.Article;
import com.xd.zijing.entity.Page;

public interface ArticleService {
	
	int insertArticle(Article article);

	Page getArticles(int cur);

	int delete(int articleId);

	Article findById(int articleId);

	int update(Article article);
	
}
