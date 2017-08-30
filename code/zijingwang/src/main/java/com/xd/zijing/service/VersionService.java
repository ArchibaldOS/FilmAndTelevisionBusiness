package com.xd.zijing.service;

import com.xd.zijing.entity.Page;
import com.xd.zijing.entity.Version;

import java.util.List;

/**
 * Created by lenovo on 2017/8/22.
 */
public interface VersionService {

    Page queryVersions(int cur);

    Version queryById(int versionId);

    boolean deleteById(int versionId);

    boolean addVersion(Version version);

    boolean updateVersion(Version version);

    List<Version> findAllForMovie();
}
