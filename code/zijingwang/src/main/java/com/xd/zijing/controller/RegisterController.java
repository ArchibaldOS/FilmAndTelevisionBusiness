package com.xd.zijing.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.xd.zijing.entity.VipData;
import com.xd.zijing.service.VipdataService;

@Controller
public class RegisterController {
	
	@Autowired
	private VipdataService vipdataService;
	
	@RequestMapping(value="/Userregister",method=RequestMethod.POST)
	public String register(String VipUsername,String VipPassword,String VipTelephone ){
		
		//System.out.println(VipUsername+" 000 "+VipPassword+"  "+VipTelephone);
		
		try{
			VipData vipData =vipdataService.register(VipUsername, VipPassword,VipTelephone);
			
		    return "redirect:/Userlogin.jsp";
		}catch(Exception e){
			System.out.println("返回注册");
			e.printStackTrace();
			return "redirect:/Userlogin.jsp";
		}	
	}

}
