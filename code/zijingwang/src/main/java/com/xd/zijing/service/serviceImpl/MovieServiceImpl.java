package com.xd.zijing.service.serviceImpl;

import com.xd.zijing.mapper.MovieDao;
import com.xd.zijing.entity.Page;
import com.xd.zijing.entity.Movie;
import com.xd.zijing.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by lenovo on 2017/8/22.
 */
@Service
public class MovieServiceImpl implements MovieService {

    @Autowired
    private MovieDao movieDao;

    @Override
    public Page queryMovies(int cur) {

        Page page=new Page(cur);
        int count=movieDao.count();
        List<Movie> movies=movieDao.findAll(page.getOffset(),page.getSize());

        page.setCount(count);
        page.setList(movies);

        return page;
    }

    @Override
    public Movie queryById(int movieId) {
        return movieDao.queryById(movieId);
    }

    @Override
    public boolean deleteById(int movieId) {
        return movieDao.deleteById(movieId);
    }

    @Override
    public boolean addMovie(Movie movie) {
        return movieDao.addMovie(movie);
    }

    @Override
    public boolean updateMovie(Movie movie) {
        return movieDao.updateMovie(movie);
    }
}
