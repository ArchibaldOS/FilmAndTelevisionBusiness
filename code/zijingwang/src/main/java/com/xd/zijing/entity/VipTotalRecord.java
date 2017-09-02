package com.xd.zijing.entity;

import java.sql.Date;


//积分记录
public class VipTotalRecord {
	private  Integer totalRelId;
	private  Integer totalCount;
	private  String  totalWay;
	private  Date totalDate;
	private  Integer vipId;
	
	private  VipData vipData;
	public VipData getVipData() {
		return vipData;
	}
	public void setVipData(VipData vipData) {
		this.vipData = vipData;
	}
	public Integer getTotalRelId() {
		return totalRelId;
	}
	public void setTotalRelId(Integer totalRelId) {
		this.totalRelId = totalRelId;
	}
	public Integer getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(Integer totalCount) {
		this.totalCount = totalCount;
	}
	public String getTotalWay() {
		return totalWay;
	}
	public void setTotalWay(String totalWay) {
		this.totalWay = totalWay;
	}
	public Date getTotalDate() {
		return totalDate;
	}
	public void setTotalDate(Date totalDate) {
		this.totalDate = totalDate;
	}
	public Integer getvipId() {
		return vipId;
	}
	public void setvipId(Integer vipId) {
		this.vipId = vipId;
	}
	
	@Override
	public String toString(){
		return "VipTotalRecord:totalRelId="+totalRelId+",totalCount="+totalCount+",totalWay="+totalWay+",totalDate="+totalDate;
	}
	
}
