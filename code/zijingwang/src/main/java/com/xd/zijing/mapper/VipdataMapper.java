package com.xd.zijing.mapper;

import java.sql.Date;

import org.apache.ibatis.annotations.Param;

import com.xd.zijing.entity.VipData;

public interface VipdataMapper {

	VipData findByUsername(String vipUsername);
	
	VipData RegisterVipData(@Param("vipUsername") String vipUsername, @Param("vipPassword") String vipPassword, @Param("vipTelephone") String vipTelephone);

	//VipData update(@Param ("vipId")int vipId,@Param ("vipName")String vipName,@Param ("vipGender")String vipGender,@Param ("vipBirthday")Date vipBirthday);

	boolean updatebalance(@Param("vipId") int vipId, @Param("rechMoney") int rechMoney);
	
	boolean updatetotal(@Param("vipId") int vipId, @Param("rechMoney") int rechMoney);
	
	VipData findById(int vipId);

	boolean update(VipData vipData);

    boolean changepassword(VipData vipData1);

    void changerank(VipData vipData1);

}
