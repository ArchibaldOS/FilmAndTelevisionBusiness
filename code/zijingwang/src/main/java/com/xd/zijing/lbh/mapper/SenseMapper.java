package com.xd.zijing.lbh.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import com.xd.zijing.lbh.entity.SenseWord;

public interface SenseMapper {

	int insertSense(SenseWord senseWord);

	int count();
	
	List<SenseWord> findAll(@Param("offset")int offset, @Param("size")int size);
	
	int delete(@Param("senseId")int senseId);

	SenseWord findById(@Param("senseId")int senseId);

	int update(SenseWord senseWord);

	List<SenseWord> find();

}
