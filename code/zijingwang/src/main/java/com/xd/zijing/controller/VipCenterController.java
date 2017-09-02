package com.xd.zijing.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.xd.zijing.dto.Page;
import com.xd.zijing.entity.VipData;
import com.xd.zijing.entity.VipTotalRecord;
import com.xd.zijing.service.VipcenterService;

@Controller 
public class VipCenterController {

	@Autowired
	private VipcenterService vipcenterService;
	
	@RequestMapping(value="/searchtotal", method=RequestMethod.GET)
	public String total(@RequestParam(name="cur", defaultValue="1") int cur, Model model,int vipId){
		
		Page page = vipcenterService.getTotalRecord(cur,vipId);
		
		
		model.addAttribute("paget", page);
		System.out.println(page);
		return "wch/VipCenter";
	}
	
	@RequestMapping(value="/searchrecharge", method=RequestMethod.GET)
	public String recharge(@RequestParam(name="cur", defaultValue="1") int cur, Model model,int vipId){
		
		Page page = vipcenterService.getRechargeRecord(cur,vipId);
		
		
		model.addAttribute("pager", page);
		System.out.println(page);
		return "wch/VipCenter";
	}
	
	@RequestMapping(value="/searchconsume", method=RequestMethod.GET)
	public String consume(@RequestParam(name="cur", defaultValue="1") int cur, Model model,int vipId){
		
		Page page = vipcenterService.getConsumeRecord(cur,vipId);
		
		
		model.addAttribute("pagec", page);
		System.out.println(page);
		return "wch/VipCenter";
	}
//	@RequestMapping(value="/searchtotal",method=RequestMethod.GET)
//	public String searchtotal(String vipId){
//		VipTotalRecord vipTotalRecord=vipcenterService.searchtotal(vipId);
//		return vipId;		
//	}
	
}
