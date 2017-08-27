package com.xd.zijing.mapper;

import com.xd.zijing.entity.Hall;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by lenovo on 2017/8/20.
 */
public interface HallDao {

    Hall queryHallById(int hallId);

    boolean deleteById(int hallId);

    boolean addHall(Hall hall);

    int count();

    List<Hall> findAll(@Param("offset")int offset, @Param("size")int size);

    boolean updateHall(Hall hall);
}
