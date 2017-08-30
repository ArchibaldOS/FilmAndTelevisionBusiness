package com.xd.zijing.mapper;


import com.xd.zijing.entity.MovieType;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by lenovo on 2017/8/22.
 */
public interface MovieTypeDao {

    MovieType queryById(int movieTypeId);

    boolean deleteById(int movieTypeId);

    boolean addMovieType(MovieType movieType);

    int count();

    List<MovieType> findAll(@Param("offset")int offset,@Param("size")int size);

    boolean updateMovieType(MovieType movieType);

    List<MovieType> findAllForMovie();
}
