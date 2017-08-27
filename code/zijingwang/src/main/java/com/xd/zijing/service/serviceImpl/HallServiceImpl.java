package com.xd.zijing.service.serviceImpl;

import com.xd.zijing.mapper.HallDao;
import com.xd.zijing.entity.Page;
import com.xd.zijing.entity.Hall;
import com.xd.zijing.service.HallService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by lenovo on 2017/8/20.
 */
@Service
public class HallServiceImpl implements HallService {

    @Autowired
    private HallDao hallDao;

    @Override
    public Page queryHalls(int cur) {

        Page page=new Page(cur);
        int  count=hallDao.count();
        List<Hall> halls=hallDao.findAll(page.getOffset(),page.getSize());

        page.setCount(count);
        page.setList(halls);

        return page;
    }

    @Override
    public Hall queryHallById(int hallId) {

        return hallDao.queryHallById(hallId);
    }

    @Override
    public boolean deleteById(int hallId) {
        return hallDao.deleteById(hallId);
    }

    @Override
    public boolean addHall(Hall hall) {

        return hallDao.addHall(hall);
    }

    @Override
    public boolean updateHall(Hall hall) {
        return hallDao.updateHall(hall);
    }
}
