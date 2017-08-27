package com.xd.zijing.mapper;

import com.xd.zijing.entity.Cinema;

/**
 * Created by lenovo on 2017/8/20.
 */
public interface CinemaDao {

    Cinema queryCinemaInfo();

    int updateCinema(Cinema cinema);

}
