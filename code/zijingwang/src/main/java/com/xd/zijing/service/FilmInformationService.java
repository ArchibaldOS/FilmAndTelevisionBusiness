package com.xd.zijing.service;

import java.util.List;

import com.xd.zijing.dto.Page;
import com.xd.zijing.entity.*;
import com.xd.zijing.mapper.FilmInformationMapper;

public interface FilmInformationService {

	
	
	 int seatchoose(FilmInformation filmInformation);
	
	 int seatInsert(Seating seating);
	 
	 int insertOrder(Order1 order);
	
	 List<Seating> findAll(String cinema, String filmHall, String filmName, String filmTime);
	 
	 List<Cinema> findCinema(String filmName);

	 List<Timing> findTiming(String filmName, String cinema);

	 Cinema findById(int filmId);

    Info findInfo(String name);
}
