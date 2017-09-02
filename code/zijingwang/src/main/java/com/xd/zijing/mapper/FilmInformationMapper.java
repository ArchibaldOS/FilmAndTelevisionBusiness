package com.xd.zijing.mapper;

import java.util.List;

import com.xd.zijing.entity.*;
import org.apache.ibatis.annotations.Param;

public interface FilmInformationMapper {

	int count();
	
	int insert(FilmInformation filmInfermation);
	
	int insertSeat(Seating seating);
	
	int insertOrder(Order1 order);
	
	List<Seating> findAll(@Param("cinema") String cinema, @Param("filmHall") String filmHall, @Param("filmName") String filmName, @Param("filmTime") String filmTime);

	List<Cinema> findCinema(String filmName);
	
	List<Timing> findTiming(@Param("filmName") String filmName, @Param("cinema") String cinema);

	Cinema findById(int filmId);

    Info findInfo(String name);
}
