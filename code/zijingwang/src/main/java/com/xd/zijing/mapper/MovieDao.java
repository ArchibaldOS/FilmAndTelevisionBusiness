package com.xd.zijing.mapper;

import com.xd.zijing.entity.Movie;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by lenovo on 2017/8/22.
 */
public interface MovieDao {

    Movie queryById(int movieId);

    boolean deleteById(int movieId);

    boolean addMovie(Movie movie);

    int count();

    List<Movie> findAll(@Param("offset")int offset,@Param("size")int size);

    boolean updateMovie(Movie movie);
}
