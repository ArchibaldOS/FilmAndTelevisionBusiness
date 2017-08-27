package com.xd.zijing.lbh.service;

import com.xd.zijing.lbh.entity.Message;
import com.xd.zijing.lbh.entity.Page;

public interface MessageService {

	Page getMessages(int cur);

	int delete(int messageId);

	Message findById(int messageId);

	int reply(Message message);

	int insert(Message message);

	
}
