package com.xd.zijing.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xd.zijing.entity.Page;
import com.xd.zijing.entity.SenseWord;
import com.xd.zijing.service.SenseService;

@Controller
public class SenseController {

	@Autowired
	private SenseService senseService;
	
	@RequestMapping(value="/addSense",method=RequestMethod.GET)
	public String get(){
		return "lbh/views/senseAdd";
	}
	
	@RequestMapping(value="/addSense",method=RequestMethod.POST)
	public String addSense(String senseContent){
		
		SenseWord senseWord = new SenseWord();
		senseWord.setSenseContent(senseContent);
		int result = senseService.insertSense(senseWord);
		if(result == 1){
			return "lbh/views/senseAdd";
		}else{
			return ""; 
		}
	}
	
	@RequestMapping(value="/listSense", method=RequestMethod.GET)
	public String list(@RequestParam(name="cur", defaultValue="1") int cur, Model model){
		
		Page page = senseService.getSenses(cur);
		
		model.addAttribute("page", page);
		
		return "lbh/views/senseList";
	}
	
	@RequestMapping(value="/senseDelete",method=RequestMethod.GET)
	public String delete(@RequestParam(name="senseId") int senseId){
		senseService.delete(senseId);
		return "forward:/listSense";	
	}
	
	@RequestMapping(value="/senseDelete2",method=RequestMethod.GET)
	public @ResponseBody int delete2(@RequestParam(name="senseId") int senseId){
		int result = senseService.delete(senseId);
		return result;	
	}
	@RequestMapping(value="/senseUpdate",method=RequestMethod.GET)
	public String updatePage(int senseId,Model model) {
		
		SenseWord senseWord = senseService.findById(senseId);
		model.addAttribute("senseWord", senseWord);
		return "lbh/views/senseUpdate";
	}
	
	@RequestMapping(value="/senseUpdate",method=RequestMethod.POST)
	public String update(int senseId,String senseContent){
		SenseWord senseWord = senseService.findById(senseId);
		senseWord.setSenseContent(senseContent);
		
		senseService.update(senseWord);
		return "redirect:/listSense";
	}
	
	
}
