package com.xd.zijing.entity;

import java.sql.Date;


//充值记录
public class VipRechargeRecord {

	private Integer rechId;
	private Integer rechMoney;
	private String rechWay;
	private Date rechDate;
	private Integer vipId;
	
	private  VipData vipData;
	public VipData getVipData() {
		return vipData;
	}
	public void setVipData(VipData vipData) {
		this.vipData = vipData;
	}
	
	public Integer getRechId() {
		return rechId;
	}
	public void setRechId(Integer rechId) {
		this.rechId = rechId;
	}
	public Integer getRechMoney() {
		return rechMoney;
	}
	public void setRechMoney(Integer rechMoney) {
		this.rechMoney = rechMoney;
	}
	public String getRechWay() {
		return rechWay;
	}
	public void setRechWay(String rechWay) {
		this.rechWay = rechWay;
	}
	public Date getRechDate() {
		return rechDate;
	}
	public void setRechDate(Date rechDate) {
		this.rechDate = rechDate;
	}
	public Integer getvipId() {
		return vipId;
	}
	public void setvipId(Integer vipId) {
		this.vipId = vipId;
	}
	
	@Override
	public String toString(){
		return "VipRechargeRecord: rechId="+rechId+",rechMoney"+rechMoney+",rechWay"+rechWay+",rechDate"+rechDate;
	}
}
