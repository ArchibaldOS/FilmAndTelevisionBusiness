package com.xd.zijing.service;

import com.xd.zijing.entity.Cinema;

/**
 * Created by lenovo on 2017/8/20.
 */
public interface CinemaService {

    Cinema queryCinemaInfo();

    int updateCinema(Cinema cinema);
}
