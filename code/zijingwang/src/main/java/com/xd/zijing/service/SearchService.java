package com.xd.zijing.service;

import java.util.List;

import com.xd.zijing.entity.Filmreview;
import com.xd.zijing.entity.Information;

public interface SearchService {
	
	//ͨ�����ֲ鿴����
	List<Information> search(String name);
	
	List<Information> get(int id);
	
	List<Filmreview> review(String name);
	
	boolean insert(String nickname, String name, String review);
	
	
}