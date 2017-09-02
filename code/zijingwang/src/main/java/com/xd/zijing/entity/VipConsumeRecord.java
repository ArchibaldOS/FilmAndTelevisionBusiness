package com.xd.zijing.entity;

import java.sql.Date;


//消费记录
public class VipConsumeRecord {
	private Integer buyId;
	private double buyMoney;
	private String buyWay;
	private Date buyDate;
	private Integer vipId;
	
	private  VipData vipData;
	public VipData getVipData() {
		return vipData;
	}
	public void setVipData(VipData vipData) {
		this.vipData = vipData;
	}
	public Integer getBuyId() {
		return buyId;
	}
	public void setBuyId(Integer buyId) {
		this.buyId = buyId;
	}
	public double getBuyMoney() {
		return buyMoney;
	}
	public void setBuyMoney(double buyMoney) {
		this.buyMoney = buyMoney;
	}
	public String getBuyWay() {
		return buyWay;
	}
	public void setBuyWay(String buyWay) {
		this.buyWay = buyWay;
	}
	public Date getBuyDate() {
		return buyDate;
	}
	public void setBuyDate(Date buyDate) {
		this.buyDate = buyDate;
	}
	public Integer getvipId() {
		return vipId;
	}
	public void setvipId(Integer vipId) {
		this.vipId = vipId;
	}
	
	@Override
	public String toString(){
		return "VipConsumeRecord: buyId="+buyId+",buyMoney="+buyMoney+",buyWay="+buyWay+",buyDate="+buyDate;
	}
	
}
