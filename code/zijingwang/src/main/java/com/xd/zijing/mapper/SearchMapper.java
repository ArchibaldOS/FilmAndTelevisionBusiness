package com.xd.zijing.mapper;

import java.util.List;


import com.xd.zijing.entity.Information;

public interface SearchMapper {

		List<Information> findByname(String name);
		List<Information> findByid(int id);

		String select(String name);
	
	
}
