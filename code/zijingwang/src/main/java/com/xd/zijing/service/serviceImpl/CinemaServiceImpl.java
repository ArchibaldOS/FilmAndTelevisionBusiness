package com.xd.zijing.service.serviceImpl;

import com.xd.zijing.mapper.CinemaDao;
import com.xd.zijing.entity.Cinema1;
import com.xd.zijing.service.CinemaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by lenovo on 2017/8/20.
 */
@Service
public class CinemaServiceImpl implements CinemaService {

    @Autowired
    private CinemaDao cinemaDao;

    @Override
    public Cinema1 queryCinemaInfo() {

        return cinemaDao.queryCinemaInfo();
    }

    @Override
    @Transactional
    public int updateCinema(Cinema1 cinema) {
        return cinemaDao.updateCinema(cinema);
    }
}
