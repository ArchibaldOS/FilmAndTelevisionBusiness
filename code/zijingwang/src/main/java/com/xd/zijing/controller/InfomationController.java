package com.xd.zijing.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.xd.zijing.entity.Filmreview;
import com.xd.zijing.entity.Information;
import com.xd.zijing.service.SearchService;

@Controller
public class InfomationController {
	@Autowired
	private SearchService searchService;

	
	
	@RequestMapping(value="/FilmInfo",method=RequestMethod.GET)
	public String open(){
		return "ylds/FilmInfo";
	}
	
	
	@RequestMapping(value="/redirect", method=RequestMethod.POST)
	public String search(String name,Model model){
		List<Information> informations=searchService.search(name);
		try{
			model.addAttribute("pic",informations.get(0).getPost());
			model.addAttribute("infos",informations);
			return "ylds/detail";
		}
		catch (Exception e) {
			return "ylds/error";
		}
	}
	
	@RequestMapping(value="/red/{id}/detail", method=RequestMethod.GET)
	public String search(@PathVariable("id")int id,Model model){
		List<Information> informations=searchService.get(id);
			model.addAttribute("pic",informations.get(0).getPost());
			model.addAttribute("infos",informations);
			return "ylds/detail";
	}
	
	@RequestMapping(value="/review/{name}", method=RequestMethod.GET)
	public String review(@PathVariable("name")String name,Model model){
		List<Filmreview> informations=searchService.review(name);
		model.addAttribute("name",informations);
		return "ylds/FilmReview";
	}
	
	@RequestMapping(value="/insert", method=RequestMethod.POST)
		public String insert( String nickname,String name, String review,Model model){
		searchService.insert(nickname, name, review);
		List<Filmreview> informations=searchService.review(name);
		model.addAttribute("name",informations);
		return "ylds/FilmReview";
       }
//	@RequestMapping(value="/FilmReviewAction", method=RequestMethod.POST)
//	public String reviewAction(Model model,String name){
//		Filmreview filmreview =searchService.review(name);
//		model.addAttribute("name",filmreview);
//		System.out.println(filmreview.toString());
//		return "ylds/FilmReview";
//	}
	
}
