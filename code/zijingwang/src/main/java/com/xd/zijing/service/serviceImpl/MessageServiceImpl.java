package com.xd.zijing.service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xd.zijing.entity.Message;
import com.xd.zijing.entity.Page;
import com.xd.zijing.mapper.MessageMapper;
import com.xd.zijing.service.MessageService;

@Service
public class MessageServiceImpl implements MessageService {

	@Autowired
	private MessageMapper messageMapper;
	
	@Override
	public Page getMessages(int cur) {
		
		Page page = new Page(cur);
		
		int count = messageMapper.count();
		
		List<Message> messages = messageMapper.findAll(page.getOffset(), page.getSize());
		
		page.setCount(count);
		page.setList(messages);
		
		return page;
	}

	@Override
	public int delete(int messageId) {
		int result = messageMapper.delete(messageId);
		return result;
	}

	@Override
	public Message findById(int messageId) {
		Message message = messageMapper.findById(messageId);
		return message;
	}

	@Override
	public int reply(Message message) {
		int result = messageMapper.reply(message);
		return result;
	}

	@Override
	public int insert(Message message) {
		int result = messageMapper.insert(message);
		return result;
	}

}
