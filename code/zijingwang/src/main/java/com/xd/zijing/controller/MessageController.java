package com.xd.zijing.controller;

import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xd.zijing.entity.Message;
import com.xd.zijing.entity.Page;
import com.xd.zijing.entity.SenseWord;
import com.xd.zijing.service.MessageService;
import com.xd.zijing.service.SenseService;

@Controller
public class MessageController {
	
	@Autowired
	private MessageService messageService;
	
	@Autowired
	private SenseService senseService;
	
	@RequestMapping(value="/message",method=RequestMethod.GET)
	public String message(){
		return "lbh/views/message";
	}
	
	//后台留言展示
	@RequestMapping(value="/listMessage", method=RequestMethod.GET)
	public String list(@RequestParam(name="cur", defaultValue="1") int cur, Model model){
		
		Page page = messageService.getMessages(cur);
		
		model.addAttribute("page", page);
		
		return "lbh/views/messageList";
	}
	
	//前台留言展示
	@RequestMapping(value="/listMessage2",method=RequestMethod.GET)
	public @ResponseBody Page list2(@RequestParam(name="cur", defaultValue="1") int cur){
		Page page = messageService.getMessages(cur);
		return page;
	}
	
	@RequestMapping(value="/messageDelete",method=RequestMethod.GET)
	public @ResponseBody int delete(@RequestParam(name="messageId") int messageId){
		int result = messageService.delete(messageId);
		return result;	
	}
	
	@RequestMapping(value="/messageReply",method=RequestMethod.GET)
	public String replyPage(@RequestParam(name="messageId") int messageId,Model model){
		Message message = messageService.findById(messageId);
		model.addAttribute("message", message);
		return "lbh/views/messageReply";
	}
	
	//留言后台回复
	@RequestMapping(value="/messageReply",method=RequestMethod.POST)
	public String reply(int messageId,String replyMessage){
		
		Message message = messageService.findById(messageId);
		message.setReplyMessage(replyMessage);
		messageService.reply(message);
		return "redirect:/listMessage";
	}

	//前台留言
	@RequestMapping(value="/message",method=RequestMethod.POST)
	public String leaveMessage(String messageContent, HttpSession session,HttpServletRequest req){
		/*
		 * uncompleted
		 */
		//session.getAttribute("vipdata");
		
		
		Message message = new Message();
		List<SenseWord> list = senseService.findAll();
		SensitivewordFilter filter = new SensitivewordFilter(list);
		Set<String> set = filter.getSensitiveWord(messageContent, 1);
		if(set.size() != 0){
			req.setAttribute("isSucceed", 0);
			req.setAttribute("set", set);
			return "lbh/views/message";
		}
		else{
			message.setUserId(5);
			message.setMessageContent(messageContent);
			messageService.insert(message);
			req.setAttribute("isSucceed", 1);
			return "lbh/views/message";
		}
		
		
	}
}
