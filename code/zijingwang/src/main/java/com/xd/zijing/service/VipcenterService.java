package com.xd.zijing.service;

import com.xd.zijing.dto.Page;
import com.xd.zijing.entity.VipData;
import com.xd.zijing.entity.VipTotalRecord;

public interface VipcenterService {


	Page getTotalRecord(int cur, int vipId);

	Page getRechargeRecord(int cur, int vipId);

	Page getConsumeRecord(int cur, int vipId);
}
