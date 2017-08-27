package com.xd.zijing.lbh.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.xd.zijing.lbh.entity.Message;

public interface MessageMapper {

	int count();

	List<Message> findAll(@Param("offset")int offset, @Param("size")int size);

	int delete(@Param("messageId")int messageId);

	Message findById(@Param("messageId")int messageId);

	int reply(Message message);

	int insert(Message message);

}
