package com.xd.zijing.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xd.zijing.entity.Article;
import com.xd.zijing.entity.Page;
import com.xd.zijing.service.ArticleCommentService;
import com.xd.zijing.service.ArticleService;

@Controller
public class ArticeController {

	@Autowired
	private ArticleService articleService;
	
	@Autowired
	private ArticleCommentService articleCommentService;
	
	@RequestMapping(value="/article",method=RequestMethod.GET)
	public String article(){
		return "lbh/views/article";
	}
	
	@RequestMapping(value="/articleContent",method=RequestMethod.GET)
	public String content(@RequestParam(name="articleId") int articleId,@RequestParam(name="cur", defaultValue="1") int cur,Model model){

		Article article = articleService.findById(articleId);
		
		Page page = articleCommentService.findById(articleId,cur);
		
		model.addAttribute("article", article);
		model.addAttribute("page", page);	
		return "lbh/views/articleContent";
		
	}
	
	@RequestMapping(value="/addArticle",method=RequestMethod.GET)
	public String get(){
		return "lbh/views/articleAdd";
	}
	
	@RequestMapping(value="/articleAdd",method=RequestMethod.POST)
	public String addArticle(String title, String author, String keyword, String articleContent){
		articleContent = HTMLEncode(articleContent);
		
		Article article = new Article();
		article.setTitle(title);
		article.setAuthor(author);
		article.setKeyword(keyword);
		article.setArticleContent(articleContent);
		
		int result = articleService.insertArticle(article);
		if(result == 1){
			return "redirect:/listArticle";
		}else{
			return "";
		}
		
	}
	
	@RequestMapping(value="/articleDelete",method=RequestMethod.GET)
	public String delete(@RequestParam(name="articleId") int articleId){
		articleService.delete(articleId);
		return "forward:/listArticle";
	}
	
	@RequestMapping(value="/listArticle", method=RequestMethod.GET)
	public String list(@RequestParam(name="cur", defaultValue="1") int cur, Model model){
		
		Page page = articleService.getArticles(cur);
		
		
		model.addAttribute("page", page);
		
		return "lbh/views/articleList";
	}
	
	@RequestMapping(value="/listArticle2",method=RequestMethod.GET)
	public @ResponseBody Page list2(@RequestParam(name="cur", defaultValue="1") int cur){
		Page page = articleService.getArticles(cur);
		return page;
	}
	
	@RequestMapping(value="/articleDetail",method=RequestMethod.GET)
	public String detail(@RequestParam(name="articleId") int articleId, Model model) {
		
		Article article = articleService.findById(articleId);
		
		model.addAttribute("article", article);
		return "lbh/views/articleDetail";
	}
	
	@RequestMapping(value="/articleUpdate",method=RequestMethod.GET)
	public String updatePage(int articleId,Model model) {
		
		Article article = articleService.findById(articleId);
		model.addAttribute("article", article);
		return "lbh/views/articleUpdate";
	}
	
	@RequestMapping(value="/articleUpdate",method=RequestMethod.POST)
	public String update(int articleId,String title, String author, String keyword,String articleContent){
		articleContent = HTMLEncode(articleContent);
		Article article = articleService.findById(articleId);
		article.setTitle(title);
		article.setAuthor(author);
		article.setKeyword(keyword);
		article.setArticleContent(articleContent);
		
		articleService.update(article);
		return "redirect:/listArticle";
	}
	
	/*
	 * 文章格式转换函数
	 */
	public String HTMLEncode(String str) {
		  str = str.replace(">", ">");
		  str = str.replace("<", "<");
		  char ch;
		  ch = (char) 32; // space
		  str = str.replace(String.valueOf(ch), "&nbsp;");
		  ch = (char) 34; // ''
		  str = str.replace(String.valueOf(ch), "\"");
		  ch = (char) 39; // '
		  str = str.replace(String.valueOf(ch), "'");
		  ch = (char) 13; // carriage return
		  str = str.replace(String.valueOf(ch), "<br />");
		  ch = (char) 10; // new line
		  str = str.replace(String.valueOf(ch), "<br />");
		  return str;
		}
}
