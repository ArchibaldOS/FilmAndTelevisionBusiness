package com.xd.zijing.service;

import com.xd.zijing.entity.Vip;

import java.util.List;

/**
 * @author Archibald
 * @version:
 * @time: 8/27/2017.
 */
public interface VipManage {
    int insertVip(Vip vip);
    /**
     * @Author: Caihongyang
     * @Date: 3:23 PM 8/19/2017
     *
     * @Description: 新增一个Vip
     * @Param: [Vip]
     * @Return: int
     */

    int updateVip(Vip vip);
    /**
     * @Author: Caihongyang
     * @Date: 3:23 PM 8/19/2017
     *
     * @Description: 更新一个Vip的信息
     * @Param: [Vip]
     * @Return: int
     */

    int deleteVip(long id);
    /**
     * @Author: Caihongyang
     * @Date: 3:26 PM 8/19/2017
     *
     * @Description: 删除一个Vip
     * @Param: long
     * @Return: int
     */

    Vip selectVipById(long id);
    /**
     * @Author: Caihongyang
     * @Date: 3:26 PM 8/19/2017
     *
     * @Description: 通过ID查找一个Vip
     * @Param: [id]
     * @Return: Vip
     */

    List<Vip> selectAllVip(int offset, int size);
    /**
     * @Author: Caihongyang
     * @Date: 3:34 PM 8/19/2017
     *
     * @Description: 查找offset后的所有Vip的信息，每页显示size个
     * @Param: [offset：起始ID值, size：每页显示数]
     * @Return: java.util.List<Vip>
     */

}
