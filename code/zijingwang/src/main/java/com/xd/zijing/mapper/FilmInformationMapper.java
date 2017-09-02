package com.xd.zijing.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.xd.zijing.entity.Cinema;
import com.xd.zijing.entity.FilmInformation;
import com.xd.zijing.entity.Order1;
import com.xd.zijing.entity.Seating;
import com.xd.zijing.entity.Timing;

public interface FilmInformationMapper {

	int count();
	
	int insert(FilmInformation filmInfermation);
	
	int insertSeat(Seating seating);
	
	int insertOrder(Order1 order);
	
	List<Seating> findAll(@Param("cinema") String cinema, @Param("filmHall") String filmHall, @Param("filmName") String filmName, @Param("filmTime") String filmTime);

	List<Cinema> findCinema(String filmName);
	
	List<Timing> findTiming(@Param("filmName") String filmName, @Param("cinema") String cinema);

	Cinema findById(int filmId);
}
