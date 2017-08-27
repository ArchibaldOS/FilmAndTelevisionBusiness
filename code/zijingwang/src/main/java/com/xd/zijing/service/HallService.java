package com.xd.zijing.service;

import com.xd.zijing.entity.Page;
import com.xd.zijing.entity.Hall;

/**
 * Created by lenovo on 2017/8/20.
 */
public interface HallService {

    Page queryHalls(int cur);

    Hall queryHallById(int hallId);

    boolean deleteById(int hallId);

    boolean addHall(Hall hall);

    boolean updateHall(Hall hall);
}
