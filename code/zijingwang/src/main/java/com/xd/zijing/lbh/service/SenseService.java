package com.xd.zijing.lbh.service;

import java.util.List;

import com.xd.zijing.lbh.entity.Page;
import com.xd.zijing.lbh.entity.SenseWord;

public interface SenseService {

	int insertSense(SenseWord senseWord);

	Page getSenses(int cur);

	int delete(int senseId);

	SenseWord findById(int senseId);

	int update(SenseWord senseWord);
	
	List<SenseWord> findAll();
	
}
