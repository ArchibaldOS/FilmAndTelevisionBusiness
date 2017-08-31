package com.xd.zijing.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.xd.zijing.entity.Filmreview;


public interface ReviewMapper {
	
	List<Filmreview> findByname(String name);
	boolean insertByprint(@Param("nickname") String nickname, @Param("name") String name, @Param("review") String review);
	
}
