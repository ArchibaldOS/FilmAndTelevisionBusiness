package com.xd.zijing.service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xd.zijing.entity.Filmreview;
import com.xd.zijing.entity.Information;
import com.xd.zijing.mapper.ReviewMapper;
import com.xd.zijing.mapper.SearchMapper;
import com.xd.zijing.service.SearchService;

@Service
public class SearchServiceimpl implements SearchService {

		
	@Autowired
	private SearchMapper searchmapper;
	@Autowired
	private ReviewMapper reviewmapper;
	
	
	@Override
	public List<Information> search(String name) {
		return searchmapper.findByname(name);
	}
	@Override
	public List<Information> get(int id ){
		return searchmapper.findByid(id);
	}
	@Override
	public List<Filmreview> review(String name) {
		return reviewmapper.findByname(name);
	}
	@Override
	public boolean insert(String nickname, String name, String review) {
		return reviewmapper.insertByprint(nickname, name, review);
	}


	
}