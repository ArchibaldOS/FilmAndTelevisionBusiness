package com.xd.zijing.service;

import com.xd.zijing.entity.Page;
import com.xd.zijing.entity.Movie;

/**
 * Created by lenovo on 2017/8/22.
 */
public interface MovieService {

    Page queryMovies(int cur);

    Movie queryById(int movieId);

    boolean deleteById(int movieId);

    boolean addMovie(Movie movie);

    boolean updateMovie(Movie movie);
}
