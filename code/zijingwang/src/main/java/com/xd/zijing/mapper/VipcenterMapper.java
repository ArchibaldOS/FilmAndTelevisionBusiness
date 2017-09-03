package com.xd.zijing.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.xd.zijing.entity.VipConsumeRecord;
import com.xd.zijing.entity.VipRechargeRecord;
import com.xd.zijing.entity.VipTotalRecord;

public interface VipcenterMapper {
	
	VipTotalRecord searchtotal(String vipId);

	
	int countr(int vipId);
	int countc(int vipId);
	int countt(int vipId);

	List<VipTotalRecord> searchtotal(@Param("offset") int offset, @Param("size") int size, @Param("vipId") int vipId);

	List<VipRechargeRecord> searchrecharge(@Param("offset") int offset, @Param("size") int size, @Param("vipId") int vipId);

	List<VipConsumeRecord> searchconsume(@Param("offset") int offset, @Param("size") int size, @Param("vipId") int vipId);
}
