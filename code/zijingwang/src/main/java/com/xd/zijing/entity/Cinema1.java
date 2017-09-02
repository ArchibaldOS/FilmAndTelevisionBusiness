package com.xd.zijing.entity;

import java.util.List;

/**
 * Created by lenovo on 2017/8/20.
 */
public class Cinema1 {

    private String cinemaName;

    private boolean payOnline;

    private String address;

    private String telephone;

    private String introduction;

    private List<Hall> halls;

    public String getCinemaName() {
        return cinemaName;
    }

    public void setCinemaName(String cinemaName) {
        this.cinemaName = cinemaName;
    }

    public boolean isPayOnline() {
        return payOnline;
    }

    public void setPayOnline(boolean payOnline) {
        this.payOnline = payOnline;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public List<Hall> getHalls() {
        return halls;
    }

    public void setHalls(List<Hall> halls) {
        this.halls = halls;
    }

    @Override
    public String toString() {
        return "Cinema1{" +
                "cinemaName='" + cinemaName + '\'' +
                ", payOnline=" + payOnline +
                ", address='" + address + '\'' +
                ", telephone='" + telephone + '\'' +
                ", introduction='" + introduction + '\'' +
                ", halls=" + halls +
                '}';
    }
}
