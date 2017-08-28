package com.xd.zijing.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.xd.zijing.entity.ArticleComment;

public interface ArticleCommentMapper {

	int count();

	List<ArticleComment> findAll(@Param("offset")int offset, @Param("size")int size);
	
	int delete(@Param("commentId")int commentId);
	
	int insertComment(ArticleComment articleComment);

	int countById(@Param("articleId")int articleId);

	List<ArticleComment> findAllById(@Param("articleId")int articleId, @Param("offset")int offset,@Param("size") int size);

}
