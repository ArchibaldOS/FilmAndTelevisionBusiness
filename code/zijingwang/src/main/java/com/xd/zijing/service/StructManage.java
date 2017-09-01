package com.xd.zijing.service;

import com.xd.zijing.entity.Struct;

import java.util.List;

/**
 * @author Archibald
 * @version:
 * @time: 8/29/2017.
 */
public interface StructManage {
    int insertStruct(Struct struct);
    /**
     * @Author: Caihongyang
     * @Date: 3:23 PM 8/19/2017
     *
     * @Description: 新增一个Struct
     * @Param: [Struct]
     * @Return: int
     */

    int updateStruct(Struct struct);
    /**
     * @Author: Caihongyang
     * @Date: 3:23 PM 8/19/2017
     *
     * @Description: 更新一个Struct的信息
     * @Param: [Struct]
     * @Return: int
     */

    int deleteStruct(long id);
    /**
     * @Author: Caihongyang
     * @Date: 3:26 PM 8/19/2017
     *
     * @Description: 删除一个Struct
     * @Param: long
     * @Return: int
     */

    Struct selectStructById(long id);
    /**
     * @Author: Caihongyang
     * @Date: 3:26 PM 8/19/2017
     *
     * @Description: 通过ID查找一个Struct
     * @Param: [id]
     * @Return: Struct
     */

    List<Struct> selectAllStruct(int offset, int size);
    /**
     * @Author: Caihongyang
     * @Date: 3:34 PM 8/19/2017
     *
     * @Description: 查找offset后的所有Struct的信息，每页显示size个
     * @Param: [offset：起始ID值, size：每页显示数]
     * @Return: java.util.List<Struct>
     */
}
