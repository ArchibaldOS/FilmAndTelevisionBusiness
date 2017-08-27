package com.xd.zijing.service.serviceImpl;

import com.xd.zijing.mapper.VersionDao;
import com.xd.zijing.entity.Page;
import com.xd.zijing.entity.Version;
import com.xd.zijing.service.VersionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by lenovo on 2017/8/22.
 */
@Service
public class VersionServiceImpl implements VersionService {

    @Autowired
    private VersionDao versionDao;

    @Override
    public Page queryVersions(int cur) {
        Page page=new Page(cur);
        int count=versionDao.count();
        List<Version> versions=versionDao.findAll(page.getOffset(),page.getSize());

        page.setCount(count);
        page.setList(versions);

        return page;
    }

    @Override
    public Version queryById(int versionId) {
        return versionDao.queryById(versionId);
    }

    @Override
    public boolean deleteById(int versionId) {
        return versionDao.deleteById(versionId);
    }

    @Override
    public boolean addVersion(Version version) {
        return versionDao.addVersion(version);
    }

    @Override
    public boolean updateVersion(Version version) {
        return versionDao.updateVersion(version);
    }
}
