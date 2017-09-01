package com.xd.zijing.service;

import com.xd.zijing.entity.Screening;

import java.util.List;

/**
 * @author Archibald
 * @version:
 * @time: 8/26/2017.
 */
public interface ScreeningManage {
    int insertScreening(Screening screening);
    /**
     * @Author: Caihongyang
     * @Date: 3:23 PM 8/19/2017
     *
     * @Description: 新增一个Screening
     * @Param: [Screening]
     * @Return: int
     */

    int updateScreening(Screening screening);
    /**
     * @Author: Caihongyang
     * @Date: 3:23 PM 8/19/2017
     *
     * @Description: 更新一个Screening的信息
     * @Param: [Screening]
     * @Return: int
     */

    int deleteScreening(long id);
    /**
     * @Author: Caihongyang
     * @Date: 3:26 PM 8/19/2017
     *
     * @Description: 删除一个Screening
     * @Param: long
     * @Return: int
     */

    Screening selectScreeningById(long id);
    /**
     * @Author: Caihongyang
     * @Date: 3:26 PM 8/19/2017
     *
     * @Description: 通过ID查找一个Screening
     * @Param: [id]
     * @Return: Screening
     */

    List<Screening> selectAllScreening(int offset, int size);
    /**
     * @Author: Caihongyang
     * @Date: 3:34 PM 8/19/2017
     *
     * @Description: 查找offset后的所有Screening的信息，每页显示size个
     * @Param: [offset：起始ID值, size：每页显示数]
     * @Return: java.util.List<Screening>
     */

}
