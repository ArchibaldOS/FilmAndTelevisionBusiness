package com.xd.zijing.controller;

import java.sql.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.xd.zijing.entity.VipData;
import com.xd.zijing.entity.VipRechargeRecord;
import com.xd.zijing.service.VipdataService;

@Controller
public class VipdataController {
	
	@Autowired
	private VipdataService vipdataService;
	
	@RequestMapping(value="/vipdataupdate",method=RequestMethod.POST)
	public String  update(int vipId,String vipName,String vipGender,Date vipBirthday,HttpSession session){
			System.out.println(vipId+vipName+vipGender+vipBirthday);
		
			VipData vipData=new VipData();
			vipData.setvipId(vipId);
			vipData.setVipName(vipName);
			vipData.setVipGender(vipGender);
			vipData.setVipBirthday(vipBirthday);
			vipdataService.update(vipData);
			 vipData =vipdataService.findId(vipId);
			session.setAttribute("vipData", vipData );
			return "wch/VipCenter";
	}
	
	@RequestMapping(value="/recharge",method=RequestMethod.POST)
	public String  recharge(String vipId,String rechMoney,String rechWay,HttpSession session ){
			System.out.println(vipId+rechMoney+rechWay);
			int vipId1=Integer.parseInt(vipId);
			int rechMoney1=Integer.parseInt(rechMoney);
			String rechWay1;
			if(rechWay.equals("1")){
				rechWay1="支付宝";
			}
			else{
				rechWay1="微信";
			}
			VipRechargeRecord vipRechargeRecord=new VipRechargeRecord();
			vipRechargeRecord.setvipId(vipId1);
			vipRechargeRecord.setRechMoney(rechMoney1);
			vipRechargeRecord.setRechWay(rechWay1);
			
			
			try{
			vipdataService.recharge(vipRechargeRecord);
			
			VipData vipData =vipdataService.findId(vipId1);
			session.setAttribute("vipData", vipData );
			return "wch/VipCenter";
			}catch(Exception e){
				e.printStackTrace();
				return "wch/VipCenter";
			}
	}
}
