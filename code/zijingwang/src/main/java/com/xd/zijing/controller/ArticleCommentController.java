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

import com.xd.zijing.entity.Article;
import com.xd.zijing.entity.ArticleComment;
import com.xd.zijing.entity.Page;
import com.xd.zijing.entity.SenseWord;
import com.xd.zijing.entity.VipData;
import com.xd.zijing.service.ArticleCommentService;
import com.xd.zijing.service.ArticleService;
import com.xd.zijing.service.SenseService;

@Controller
public class ArticleCommentController {
	
	@Autowired
	private ArticleCommentService articleCommentService;
	
	@Autowired
	private SenseService senseService;
	
	@Autowired
	private ArticleService articleService;

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
	
	@RequestMapping(value="/articleComment",method=RequestMethod.POST)
	public String leaveComment(@RequestParam(name="articleId")int articleId,String commentContent, HttpSession session,HttpServletRequest req,Model model,@RequestParam(name="cur", defaultValue="1") int cur){
		/*
		 * uncompleted
		 */
		VipData vipData = (VipData) session.getAttribute("vipData");
		
		ArticleComment articleComment = new ArticleComment();
		List<SenseWord> list = senseService.findAll();
		SensitivewordFilter filter = new SensitivewordFilter(list);
		Set<String> set = filter.getSensitiveWord(commentContent, 1);
		if(set.size() != 0){
			req.setAttribute("isSucceed", 0);
			req.setAttribute("set", set);
		}
		else {
			if (vipData != null) {
				articleComment.setArticleId(articleId);
				articleComment.setUserId(vipData.getvipId());
				articleComment.setCommentContent(commentContent);
				articleCommentService.insert(articleComment);
				req.setAttribute("isSucceed", 1);
			}
		}
		Article article = articleService.findById(articleId);
		
		Page page = articleCommentService.findById(articleId,cur);
		
		model.addAttribute("article", article);
		model.addAttribute("page", page);	
		return "lbh/views/articleContent";
	}
	
}
