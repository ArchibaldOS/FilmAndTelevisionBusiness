package com.xd.zijing.service;

import com.xd.zijing.entity.Message;
import com.xd.zijing.entity.Page;

public interface MessageService {

	Page getMessages(int cur);

	int delete(int messageId);

	Message findById(int messageId);

	int reply(Message message);

	int insert(Message message);

	
}
