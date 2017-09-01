package com.xd.zijing.service.impl;

import com.xd.zijing.entity.Screening;
import com.xd.zijing.mapper.ScreeningMapper;
import com.xd.zijing.service.ScreeningManage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Archibald
 * @version:
 * @time: 8/26/2017.
 */
@Service
public class ScreeningManageImp implements ScreeningManage {

    @Autowired
    private ScreeningMapper screeningMapper;

    public int insertScreening(Screening screening){
        /**
         * @Author: Caihongyang
         * @Date: 3:23 PM 8/19/2017
         *
         * @Description: 新增一个screening
         * @Param: [screening]
         * @Return: int
         */
        int i =screeningMapper.insert(screening);
        return i;
    }

    public int updateScreening(Screening screening) {
        /**
         * @Author: Caihongyang
         * @Date: 3:23 PM 8/19/2017
         *
         * @Description: 更新一个screening的信息
         * @Param: [screening]
         * @Return: int
         */
        int i =screeningMapper.updateByPrimaryKey(screening);
        return i;
    }

    public int deleteScreening(long id) {
        /**
         * @Author: Caihongyang
         * @Date: 3:26 PM 8/19/2017
         *
         * @Description: 删除一个screening
         * @Param: long
         * @Return: int
         */
        int i =screeningMapper.deleteByPrimaryKey(id);
        return i;
    }

    public Screening selectScreeningById(long id) {
        /**
         * @Author: Caihongyang
         * @Date: 3:26 PM 8/19/2017
         *
         * @Description: 通过ID查找一个screening
         * @Param: [id]
         * @Return: com.six.FilmAndTelevisionBusiness.entity.screening
         */

        return screeningMapper.selectByPrimaryKey(id);
    }
    public List<Screening> selectAllScreening(int offset, int size) {
        /**
         * @Author: Caihongyang
         * @Date: 3:34 PM 8/19/2017
         *
         * @Description: 查找offset后的所有screening的信息，每页显示size个
         * @Param: [offset：起始ID值, size：每页显示数]
         * @Return: java.util.List<com.six.FilmAndTelevisionBusiness.entity.screening>
         */
        List<Screening>screenings = screeningMapper.selectAll(offset, size);
        return screenings;
    }
}
