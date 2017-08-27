package com.xd.zijing.service;

import com.xd.zijing.entity.Page;
import com.xd.zijing.entity.MovieType;

/**
 * Created by lenovo on 2017/8/22.
 */
public interface MovieTypeService {

    Page queryMoviesTypes(int cur);

    MovieType queryById(int movieTypeId);

    boolean deleteById(int movieTypeId);

    boolean addMovieType(MovieType movieType);

    boolean updateMovieType(MovieType movieType);
}
