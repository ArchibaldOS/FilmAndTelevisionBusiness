package com.xd.zijing.service.impl;

import java.sql.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xd.zijing.entity.VipData;
import com.xd.zijing.entity.VipRechargeRecord;
import com.xd.zijing.entity.VipTotalRecord;
import com.xd.zijing.mapper.RechargeMapper;
import com.xd.zijing.mapper.TotalMapper;
import com.xd.zijing.mapper.VipdataMapper;
import com.xd.zijing.service.VipdataService;

@Service
public class VipdataServiceimpl implements VipdataService {

	@Autowired
	private VipdataMapper vipdataMapper;
	@Autowired
	private RechargeMapper rechargeMapper;
	@Autowired
	private TotalMapper totalMapper;
	
	@Override
	public VipData login(String vipUsername, String vipPassword) {
		// TODO Auto-generated method stub
		System.out.println(vipUsername+" 1  "+vipPassword);
		VipData vipData=vipdataMapper.findByUsername(vipUsername);
		if( vipData == null || ! vipPassword.equals(vipData.getVipPassword())){
			throw new RuntimeException("用户名或密码错误");
		}
		
		return vipData;
	}

	@Override
	public VipData register(String vipUsername, String vipPassword, String vipTelephone) {
		// TODO Auto-generated method stub
		VipData vipData=vipdataMapper.findByUsername(vipUsername);
		
		if(vipData == null){
		//	System.out.println(vipUsername+" 333 "+vipPassword+"  "+vipTelephone);
			vipData=vipdataMapper.RegisterVipData(vipUsername,vipPassword,vipTelephone);
			return vipData;	
		}
		else{
			throw new RuntimeException("用户名已存在");
		}
		
	}
	
	@Override
	public boolean update(VipData vipData) {
		// TODO Auto-generated method stub
		//System.out.println(vipId+vipName+vipGender+vipBirthday);
		 
		return vipdataMapper.update(vipData);
	}

	@Override
	public boolean recharge(VipRechargeRecord vipRechargeRecord) {
		// TODO Auto-generated method stub
		
		VipData vipData=vipdataMapper.findById(vipRechargeRecord.getvipId());
		
		if(vipData != null){
		//System.out.println(vipId+" "+rechMoney);
		
		//vipdataMapper.updatetotal(vipId, rechMoney);
		boolean b=rechargeMapper.recharge(vipRechargeRecord);
		
		vipdataMapper.updatebalance(vipRechargeRecord.getvipId(),vipRechargeRecord.getRechMoney());
		 vipdataMapper.updatetotal(vipRechargeRecord.getvipId(),vipRechargeRecord.getRechMoney());
		 
	
//		VipTotalRecord vipTotalRecord =new VipTotalRecord();
//		vipTotalRecord.setvipId(vipRechargeRecord.getvipId());
//		vipTotalRecord.setTotalCount(vipRechargeRecord.getRechMoney());
//		vipTotalRecord.setTotalWay("充值");
//		
//		
//		  totalMapper.totalrel(vipTotalRecord);
//		 
		return b;
		}
		else{
			throw new RuntimeException("充值账号不存在");
		}
	}

	@Override
	public VipData findId(int vipId) {
		// TODO Auto-generated method stub
		VipData vipData=vipdataMapper.findById(vipId);
		return vipData;
	}

}
