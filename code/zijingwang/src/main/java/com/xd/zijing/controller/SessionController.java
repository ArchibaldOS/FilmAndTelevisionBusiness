package com.xd.zijing.controller;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.xd.zijing.entity.VipData;
import com.xd.zijing.service.VipdataService;

@Controller
public class SessionController {

	@Autowired
	private VipdataService vipdataService;
	
	@RequestMapping(value="/Userlogin",method=RequestMethod.POST)
	public String login(String vipUsername,String vipPassword,HttpSession session){
		
		try{
		//	System.out.println(vipUsername+"   "+vipPassword);
		VipData vipData =vipdataService.login(vipUsername, vipPassword);
		session.setAttribute("vipData", vipData );
            return "redirect:/";
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("返回登陆 ");
		return "redirect:/Userlogin.jsp";
		}
		
	}

    @RequestMapping(value="/wchUserlogin",method=RequestMethod.GET)
    public String vipCenter(){

        return "wch/VipCenter";

    }
}
