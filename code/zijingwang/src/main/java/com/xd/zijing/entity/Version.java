package com.xd.zijing.entity;

/**
 * Created by lenovo on 2017/8/21.
 */
public class Version {

    private int versionId;

    private String versionName;

    public int getVersionId() {
        return versionId;
    }

    public void setVersionId(int versionId) {
        this.versionId = versionId;
    }

    public String getVersionName() {
        return versionName;
    }

    public void setVersionName(String versionName) {
        this.versionName = versionName;
    }

    @Override
    public String toString() {
        return "Version{" +
                "versionId=" + versionId +
                ", versionName='" + versionName + '\'' +
                '}';
    }
}
