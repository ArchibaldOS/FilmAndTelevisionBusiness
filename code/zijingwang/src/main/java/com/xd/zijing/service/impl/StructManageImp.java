package com.xd.zijing.service.impl;

import com.xd.zijing.entity.Struct;
import com.xd.zijing.mapper.StructMapper;
import com.xd.zijing.service.StructManage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Archibald
 * @version:
 * @time: 8/29/2017.
 */
@Service
public class StructManageImp implements StructManage{

    @Autowired
    private StructMapper structMapper;

    public int insertStruct(Struct struct){
        /**
         * @Author: Caihongyang
         * @Date: 3:23 PM 8/19/2017
         *
         * @Description: 新增一个Struct
         * @Param: [Struct]
         * @Return: int
         */
        int i =structMapper.insert(struct);
        return i;
    }

    public int updateStruct(Struct struct) {
        /**
         * @Author: Caihongyang
         * @Date: 3:23 PM 8/19/2017
         *
         * @Description: 更新一个Struct的信息
         * @Param: [Struct]
         * @Return: int
         */
        int i =structMapper.updateByPrimaryKey(struct);
        return i;
    }

    public int deleteStruct(long id) {
        /**
         * @Author: Caihongyang
         * @Date: 3:26 PM 8/19/2017
         *
         * @Description: 删除一个Struct
         * @Param: long
         * @Return: int
         */
        int i =structMapper.deleteByPrimaryKey((int) id);
        return i;
    }

    public Struct selectStructById(long id) {
        /**
         * @Author: Caihongyang
         * @Date: 3:26 PM 8/19/2017
         *
         * @Description: 通过ID查找一个Struct
         * @Param: [id]
         * @Return: Struct
         */

        return structMapper.selectByPrimaryKey((int) id);
    }
    public List<Struct> selectAllStruct(int offset, int size) {
        /**
         * @Author: Caihongyang
         * @Date: 3:34 PM 8/19/2017
         *
         * @Description: 查找offset后的所有Struct的信息，每页显示size个
         * @Param: [offset：起始ID值, size：每页显示数]
         * @Return: java.util.List<Struct>
         */
        List<Struct>structs = structMapper.selectAll(offset, size);
        return structs;
    }
}
