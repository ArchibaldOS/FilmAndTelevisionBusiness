package com.xd.zijing.service.serviceImpl;

import com.xd.zijing.mapper.MovieTypeDao;
import com.xd.zijing.entity.Page;
import com.xd.zijing.entity.MovieType;
import com.xd.zijing.service.MovieTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by lenovo on 2017/8/22.
 */
@Service
public class MovieTypeServiceImpl implements MovieTypeService {

    @Autowired
    private MovieTypeDao movieTypeDao;

    @Override
    public Page queryMoviesTypes(int cur) {
        Page page = new Page(cur);
        int cout = movieTypeDao.count();
        List<MovieType> movieTypes = movieTypeDao.findAll(page.getOffset(), page.getSize());

        page.setCount(cout);
        page.setList(movieTypes);

        return page;
    }

    @Override
    public MovieType queryById(int movieTypeId) {
        return movieTypeDao.queryById(movieTypeId);
    }

    @Override
    public boolean deleteById(int movieTypeId) {
        return movieTypeDao.deleteById(movieTypeId);
    }

    @Override
    public boolean addMovieType(MovieType movieType) {
        return movieTypeDao.addMovieType(movieType);
    }

    @Override
    public boolean updateMovieType(MovieType movieType) {
        return movieTypeDao.updateMovieType(movieType);
    }
}
