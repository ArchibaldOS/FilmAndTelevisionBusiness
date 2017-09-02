package com.xd.zijing.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.xd.zijing.dto.Page;
import com.xd.zijing.entity.Cinema;
import com.xd.zijing.entity.Order1;
import com.xd.zijing.entity.Seating;
import com.xd.zijing.entity.Timing;
import com.xd.zijing.service.FilmInformationService;

@Controller
public class InformationController {

	@Autowired
	private FilmInformationService filmInformationService;
	
	@RequestMapping(value="/cinema1",method=RequestMethod.GET)
	public  String cinema(@RequestParam(name="cur", defaultValue="1") int cur, Model model)
	{
        List<Cinema> cinema =filmInformationService.findCinema("战狼2");
		
		
		model.addAttribute("cinema", cinema);
		
		
		return "dyk/cine";
	}
	
	
	@RequestMapping(value="/jump1",method=RequestMethod.GET)
	public  String jump(@RequestParam(name="cur", defaultValue="1") int cur, Model model)
	{
        List<Cinema> cinema =filmInformationService.findCinema("战狼2");
		
		
		model.addAttribute("cinema", cinema);
		
		
		return "dyk/cine1";
	}
	
	//�������ʵ���ã�������
	
	
	@RequestMapping(value="jump",method=RequestMethod.GET)
	public  String cine1( @RequestParam(name="cur", defaultValue="1") int cur, Model model,HttpServletRequest requeset)
	{
		
		Cinema cin=filmInformationService.findById(Integer.valueOf(requeset.getParameter("filmId")));
		
	
        List<Timing> timing =filmInformationService.findTiming(cin.getFilmName(),cin.getCinema());

//        List<Timing> timing =filmInformationService.findTiming("ս��2","�������Ӱ��(������ԴIMAX��)");
		
		
		model.addAttribute("timing", timing);
		
		
		return "dyk/cine1";
	}
	
	
	//��תѡ��ҳ��
	@RequestMapping(value="jumpseat",method=RequestMethod.GET)
	public  String seat( @RequestParam(name="cur", defaultValue="1") int cur, Model model,HttpServletRequest requeset)
	{
		
		//Cinema cin=filmInformationService.findById(Integer.valueOf(requeset.getParameter("filmId")));
		
	
        //List<Timing> timing =filmInformationService.findTiming(cin.getFilmName(),cin.getCinema());

//        List<Timing> timing =filmInformationService.findTiming("ս��2","�������Ӱ��(������ԴIMAX��)");
		
		
		//model.addAttribute("timing", timing);
		
		
		return "dyk/seat";
	}
	
	
	
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public  String choose(@RequestParam(name="cur", defaultValue="1") int cur, Model model,HttpServletRequest request)
	{
		
//        List<Seating> seatings =filmInformationService.findAll("�������Ӱ��(������ԴIMAX��)","3D-1��");
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


		
        List<Seating> seatings =filmInformationService.findAll(request.getParameter("cinema"),request.getParameter("filmHall"),request.getParameter("filmName"),request.getParameter("filmTime"));
		
		

		model.addAttribute("seatings", seatings);
		
		
		
		return "dyk/seat";
	}
	@RequestMapping(value="/login1",method=RequestMethod.POST)
	public  String get(String seat,String cinema,String filmHall,String filmName,String filmTime,String account)
	{
		String cinema1=cinema;
		String filmHall1=filmHall;
		String filmName1=filmName;
		String filmTime1=filmTime;
        String account1=account;
		
		System.out.println(cinema1);
		System.out.println(filmHall1);
		System.out.println(filmName1);
		System.out.println(filmTime1);
        System.out.println(account1);


        String num=seat;
		
		Order1 order=new Order1();
		order.setAccount(account1);
		order.setCinema(cinema1);
		order.setFilmHall(filmHall1);
		order.setFilmName(filmName1);
		order.setFilmTime(filmTime1);
		order.setCost((float) 50);
		
		
		
		String[] number = num.split(",");
		for (int i = 0; i < number.length; i++) {
		    
		    Seating seating=new Seating();
		    seating.setSeatId(Integer.parseInt(number[i]));
		    seating.setSeatRows(Integer.parseInt(number[i])/8);
		    seating.setSeatColumn(Integer.parseInt(number[i])%8);
		    seating.setSeatValue("des-2");
		   
		    
		    
		    
		    filmInformationService.seatInsert(seating);
		    filmInformationService.insertOrder(order);
		    
		    
		    
		}
		
		
		
		return "dyk/index";
	}
}
