package com.xd.zijing.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xd.zijing.dto.Page;
import com.xd.zijing.entity.VipConsumeRecord;
import com.xd.zijing.entity.VipData;
import com.xd.zijing.entity.VipRechargeRecord;
import com.xd.zijing.entity.VipTotalRecord;
import com.xd.zijing.mapper.VipcenterMapper;
import com.xd.zijing.mapper.VipdataMapper;
import com.xd.zijing.service.VipcenterService;

@Service
public class VipcenterServiceimpl implements VipcenterService {

	@Autowired
	public VipcenterMapper vipcenterMapper;
	@Autowired
	public VipdataMapper VipdataMapper;
	


	@Override
	public Page getRechargeRecord(int cur,int vipId) {
		Page page = new Page(cur);
		
		int count = vipcenterMapper.countr(vipId);
		
		List<VipRechargeRecord> rechargeRecords = vipcenterMapper.searchrecharge(page.getOffset(), page.getSize(),vipId);
		
		page.setCount(count);
		page.setList(rechargeRecords);
		
		return page;
	}
	
	@Override
	public Page getConsumeRecord(int cur,int vipId) {
		Page page = new Page(cur);
		
		int count = vipcenterMapper.countc(vipId);
		
		List<VipConsumeRecord> consumeRecords = vipcenterMapper.searchconsume(page.getOffset(), page.getSize(),vipId);
		
		page.setCount(count);
		page.setList(consumeRecords);
		
		return page;
	}
	
	@Override
	public Page getTotalRecord(int cur,int vipId) {
		Page page = new Page(cur);
		
		int count = vipcenterMapper.countt(vipId);
		
		List<VipTotalRecord> totalRecords = vipcenterMapper.searchtotal(page.getOffset(), page.getSize(),vipId);
		
		page.setCount(count);
		page.setList(totalRecords);
		
		return page;
	}
}
