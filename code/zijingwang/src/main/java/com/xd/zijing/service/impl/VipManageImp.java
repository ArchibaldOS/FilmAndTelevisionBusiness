package com.xd.zijing.service.impl;

import com.xd.zijing.entity.Vip;
import com.xd.zijing.mapper.VipMapper;
import com.xd.zijing.service.VipManage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Archibald
 * @version:
 * @time: 8/27/2017.
 */
@Service
public class VipManageImp implements VipManage {
    @Autowired
    private VipMapper vipMapper;

    public int insertVip(Vip vip){
        /**
         * @Author: Caihongyang
         * @Date: 3:23 PM 8/19/2017
         *
         * @Description: 新增一个Vip
         * @Param: [Vip]
         * @Return: int
         */
        int i =vipMapper.insert(vip);
        return i;
    }

    public int updateVip(Vip vip) {
        /**
         * @Author: Caihongyang
         * @Date: 3:23 PM 8/19/2017
         *
         * @Description: 更新一个Vip的信息
         * @Param: [Vip]
         * @Return: int
         */
        int i =vipMapper.updateByPrimaryKey(vip);
        return i;
    }

    public int deleteVip(long id) {
        /**
         * @Author: Caihongyang
         * @Date: 3:26 PM 8/19/2017
         *
         * @Description: 删除一个Vip
         * @Param: long
         * @Return: int
         */
        int i =vipMapper.deleteByPrimaryKey((int) id);
        return i;
    }

    public Vip selectVipById(long id) {
        /**
         * @Author: Caihongyang
         * @Date: 3:26 PM 8/19/2017
         *
         * @Description: 通过ID查找一个Vip
         * @Param: [id]
         * @Return: Vip
         */

        return vipMapper.selectByPrimaryKey((int) id);
    }
    public List<Vip> selectAllVip(int offset, int size) {
        /**
         * @Author: Caihongyang
         * @Date: 3:34 PM 8/19/2017
         *
         * @Description: 查找offset后的所有Vip的信息，每页显示size个
         * @Param: [offset：起始ID值, size：每页显示数]
         * @Return: java.util.List<Vip>
         */
        List<Vip>Vips = vipMapper.selectAll(offset, size);
        return Vips;
    }
}
