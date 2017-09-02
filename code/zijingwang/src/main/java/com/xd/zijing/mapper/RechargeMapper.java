package com.xd.zijing.mapper;

import org.apache.ibatis.annotations.Param;

import com.xd.zijing.entity.VipRechargeRecord;

public interface RechargeMapper {
//	VipRechargeRecord recharge(@Param ("vipId")int vipId,@Param ("rechMoney")int rechMoney,@Param ("rechWay")String rechWay);

	boolean recharge(VipRechargeRecord vipRechargeRecord);
}
