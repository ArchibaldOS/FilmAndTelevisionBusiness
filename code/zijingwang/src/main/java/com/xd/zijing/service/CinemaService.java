package com.xd.zijing.service;

import com.xd.zijing.entity.Cinema1;

/**
 * Created by lenovo on 2017/8/20.
 */
public interface CinemaService {

    Cinema1 queryCinemaInfo();

    int updateCinema(Cinema1 cinema);
}
