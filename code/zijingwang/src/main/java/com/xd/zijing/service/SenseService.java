package com.xd.zijing.service;

import java.util.List;

import com.xd.zijing.entity.Page;
import com.xd.zijing.entity.SenseWord;

public interface SenseService {

	int insertSense(SenseWord senseWord);

	Page getSenses(int cur);

	int delete(int senseId);

	SenseWord findById(int senseId);

	int update(SenseWord senseWord);
	
	List<SenseWord> findAll();
	
}
