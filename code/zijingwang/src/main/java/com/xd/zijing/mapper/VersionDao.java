package com.xd.zijing.mapper;

import com.xd.zijing.entity.Version;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by lenovo on 2017/8/22.
 */
public interface VersionDao {

    Version queryById(int versionId);

    boolean deleteById(int versionId);

    boolean addVersion(Version version);

    int count();

    List<Version> findAll(@Param("offset")int offset,@Param("size")int size);

    boolean updateVersion(Version version);

    List<Version> findAllForMovie();
}
