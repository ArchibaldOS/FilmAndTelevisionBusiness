package com.xd.zijing.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xd.zijing.entity.Page;
import com.xd.zijing.service.ArticleCommentService;

@Controller
public class ArticleCommentController {
	
	@Autowired
	private ArticleCommentService articleCommentService;

	@RequestMapping(value="/listArticleComment",method=RequestMethod.GET)
	public String get(@RequestParam(name="cur", defaultValue="1") int cur,Model model){

		Page page = articleCommentService.getComments(cur);
		
		
		model.addAttribute("page", page);
		
		return "lbh/views/articleCommentList";
	}
	
	@RequestMapping(value="/articleCommentDelete",method=RequestMethod.GET)
	public @ResponseBody int delete(@RequestParam(name="commentId") int commentId){
		int result = articleCommentService.delete(commentId);
		return result;
	}
	
}
