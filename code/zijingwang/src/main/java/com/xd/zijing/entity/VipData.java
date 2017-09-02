package com.xd.zijing.entity;

import java.sql.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class VipData {
	
	private Integer vipId;//会员账号
	private String  vipName; //��Ա����
	private String	vipUsername; //��Ա�û���
	private String  vipPassword; //��Ա����
	private String  vipTelephone; //��Ա�ֻ���
	private String  vipRank;   //��Ա�ȼ�
	private Integer vipTotal;  //��Ա����
	private Integer vipBalance;  //��Ա���
	private String  vipGender;  //��Ա�Ա�
	private Date  	vipBirthday;  //��Ա����
	private Date    vipLastlogin;  //��Ա�ϴε�½ʱ��
	private Date    vipRegisterDate;  //��Աע������
	public Integer getvipId() {
		return vipId;
	}


	public void setvipId(Integer vipId) {
		this.vipId = vipId;
	}


	public String getVipName() {
		return vipName;
	}


	public void setVipName(String vipName) {
		this.vipName = vipName;
	}


	public String getVipUsername() {
		return vipUsername;
	}


	public void setVipUsername(String vipUsername) {
		this.vipUsername = vipUsername;
	}


	public String getVipPassword() {
		return vipPassword;
	}


	public void setVipPassword(String vipPassword) {
		this.vipPassword = vipPassword;
	}


	public String getVipTelephone() {
		return vipTelephone;
	}


	public void setVipTelephone(String vipTelephone) {
		this.vipTelephone = vipTelephone;
	}


	public String getVipRank() {
		return vipRank;
	}


	public void setVipRank(String vipRank) {
		this.vipRank = vipRank;
	}


	public Integer getVipTotal() {
		return vipTotal;
	}


	public void setVipTotal(Integer vipTotal) {
		this.vipTotal = vipTotal;
	}


	public Integer getVipBalance() {
		return vipBalance;
	}


	public void setVipBalance(Integer vipBalance) {
		this.vipBalance = vipBalance;
	}


	public String getVipGender() {
		return vipGender;
	}


	public void setVipGender(String vipGender) {
		this.vipGender = vipGender;
	}


	public Date getVipBirthday() {
		return vipBirthday;
	}


	public void setVipBirthday(Date vipBirthday) {
		this.vipBirthday = vipBirthday;
	}


	public Date getVipLastlogin() {
		return vipLastlogin;
	}


	public void setVipLastlogin(Date vipLastlogin) {
		this.vipLastlogin = vipLastlogin;
	}


	public Date getVipRegisterDate() {
		return vipRegisterDate;
	}


	public void setVipRegisterDate(Date vipRegisterDate) {
		this.vipRegisterDate = vipRegisterDate;
	}

	
	
		@Override
	public String toString(){
		return "VipData: vipId="+vipId+",vipUsername="+vipUsername+",vipPassword="+vipPassword;
	}
	
}
