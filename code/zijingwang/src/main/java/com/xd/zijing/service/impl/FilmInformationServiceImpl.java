package com.xd.zijing.service.impl;



import java.util.List;

import com.xd.zijing.entity.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.xd.zijing.dto.Page;
import com.xd.zijing.mapper.FilmInformationMapper;
import com.xd.zijing.service.FilmInformationService;

@Service
public class FilmInformationServiceImpl implements FilmInformationService{

	private static final String String = null;
	@Autowired
	private FilmInformationMapper filmInformationMapper;
	
	
	
	public int seatchoose(FilmInformation filmInformation)
	{
		
		filmInformationMapper.insert(filmInformation);
		
		
		return 0;
	}
	
	public int seatInsert(Seating seating)
	{
		
		filmInformationMapper.insertSeat(seating);
		
		return 1;
	}
	
		
	
	/*public Page getSeatings(int cur) {
		
        Page page = new Page(cur);
		
		int count = filmInformationMapper.count();
		
		List<Seating> seatings = filmInformationMapper.findAll();
		
		page.setCount(count);
		page.setList(seatings);
		System.out.println(filmInformationMapper.findAll());
		return page;
	}*/

	public List<Seating> findAll(String cinema,String filmHall,String filmName,String filmTime) {
		
		List<Seating> seatings=filmInformationMapper.findAll(cinema,filmHall,filmName,filmTime);
		
		return seatings;
		
	}

	public List<Cinema> findCinema(String filmName) {
		List<Cinema> cinema=filmInformationMapper.findCinema(filmName);
		return cinema;
	}

	public List<Timing> findTiming(String filmName, String cinema) {
		List<Timing> timing=filmInformationMapper.findTiming(filmName, cinema);
		return timing;
	}

	public Cinema findById(int filmId) {
		Cinema cin=filmInformationMapper.findById(filmId);
		return cin;
	}

	public List<Seating> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	public int insertOrder(Order1 order) {
		
		filmInformationMapper.insertOrder(order);
		return 1;
	}

    public Info findInfo(String name) {

        Info info=filmInformationMapper.findInfo(name);

        return info;
    }



}
