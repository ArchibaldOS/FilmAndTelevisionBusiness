package com.xd.zijing.entity;

/**
 * Created by lenovo on 2017/8/20.
 */
public class Hall {

    private int hallId;

    private String hallName;

    private Cinema cinema;

    public int getHallId() {
        return hallId;
    }

    public void setHallId(int hallId) {
        this.hallId = hallId;
    }

    public String getHallName() {
        return hallName;
    }

    public void setHallName(String hallName) {
        this.hallName = hallName;
    }

    public Cinema getCinema() {
        return cinema;
    }

    public void setCinema(Cinema cinema) {
        this.cinema = cinema;
    }

    @Override
    public String toString() {
        return "Hall{" +
                "hallId=" + hallId +
                ", hallName='" + hallName + '\'' +
                ", cinema=" + cinema +
                '}';
    }
}
