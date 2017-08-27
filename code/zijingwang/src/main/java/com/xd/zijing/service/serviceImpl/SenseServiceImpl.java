package com.xd.zijing.service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xd.zijing.entity.Page;
import com.xd.zijing.entity.SenseWord;
import com.xd.zijing.mapper.SenseMapper;
import com.xd.zijing.service.SenseService;

@Service
public class SenseServiceImpl implements SenseService {

	@Autowired
	private SenseMapper senseMapper;
	
	@Override
	public int insertSense(SenseWord senseWord) {
		int result = senseMapper.insertSense(senseWord);
		return result;
	}

	@Override
	public Page getSenses(int cur) {
		Page page = new Page(cur);
		int count = senseMapper.count();
		List<SenseWord> senses = senseMapper.findAll(page.getOffset(), page.getSize());
		page.setCount(count);
		page.setList(senses);
		
		return page;
	}

	@Override
	public int delete(int senseId) {
		int result = senseMapper.delete(senseId);
		return result;
	}

	@Override
	public SenseWord findById(int senseId) {
		SenseWord senseWord = senseMapper.findById(senseId);
		return senseWord;
	}

	@Override
	public int update(SenseWord senseWord) {
		int result = senseMapper.update(senseWord);
		return result;
	}

	@Override
	public List<SenseWord> findAll() {
		List<SenseWord> list = senseMapper.find();
		return list;
	}

}
