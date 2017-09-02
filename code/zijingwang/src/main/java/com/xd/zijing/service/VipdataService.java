package com.xd.zijing.service;

import java.sql.Date;

import com.xd.zijing.entity.VipData;
import com.xd.zijing.entity.VipRechargeRecord;


public interface VipdataService {

	VipData login(String Username, String password);
	
	VipData register(String username, String password, String telephone);

	//VipData update(int vipId,String vipName,String vipGender,Date vipBrithday);

	//VipRechargeRecord recharge(int vipId, int rechMoney, String rechWay);

	boolean update(VipData vipData);

	boolean recharge(VipRechargeRecord vipRechargeRecord);

	VipData findId(int vipId);

    boolean changepassword(int vipId, String vipPassword, String vipnewPassword);





}
