package com.xd.zijing.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.xd.zijing.entity.Article;

public interface ArticleMapper {
	
	int insertArticle(Article article);

	int count();

	List<Article> findAll(@Param("offset")int offset, @Param("size")int size);

	int delete(@Param("articleId")int articleId);

	Article findById(@Param("articleId")int articleId);

	int update(Article article);

}
