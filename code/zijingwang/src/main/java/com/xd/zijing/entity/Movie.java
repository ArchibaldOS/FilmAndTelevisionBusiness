package com.xd.zijing.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * Created by lenovo on 2017/8/21.
 */
public class Movie {

    private int movieId;

    private String movieType;

    private String version;

    private String movieName;

    private String director;

    private String actor;

    private String region;

    private String duration;

    private boolean released;

    @DateTimeFormat(pattern = "yyyy-MM-dd" )
    private Date releaseDate;

    private String stars;

    private boolean topped;

    private String clickRate;

    private String shortComment;

    private String introduction;

    private String faceSPicture;

    private String faceBPicture;

    private String stills;

    public int getMovieId() {
        return movieId;
    }

    public void setMovieId(int movieId) {
        this.movieId = movieId;
    }

    public String getMovieType() {
        return movieType;
    }

    public void setMovieType(String movieType) {
        this.movieType = movieType;
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public String getActor() {
        return actor;
    }

    public void setActor(String actor) {
        this.actor = actor;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public boolean isReleased() {
        return released;
    }

    public void setReleased(boolean released) {
        this.released = released;
    }

    public Date getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(Date releaseDate) {
        this.releaseDate = releaseDate;
    }

    public String getStars() {
        return stars;
    }

    public void setStars(String stars) {
        this.stars = stars;
    }

    public boolean isTopped() {
        return topped;
    }

    public void setTopped(boolean topped) {
        this.topped = topped;
    }

    public String getClickRate() {
        return clickRate;
    }

    public void setClickRate(String clickRate) {
        this.clickRate = clickRate;
    }

    public String getShortComment() {
        return shortComment;
    }

    public void setShortComment(String shortComment) {
        this.shortComment = shortComment;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public String getFaceSPicture() {
        return faceSPicture;
    }

    public void setFaceSPicture(String faceSPicture) {
        this.faceSPicture = faceSPicture;
    }

    public String getFaceBPicture() {
        return faceBPicture;
    }

    public void setFaceBPicture(String faceBPicture) {
        this.faceBPicture = faceBPicture;
    }

    public String getStills() {
        return stills;
    }

    public void setStills(String stills) {
        this.stills = stills;
    }

    @Override
    public String toString() {
        return "Movie{" +
                "movieId=" + movieId +
                ", movieType='" + movieType + '\'' +
                ", version='" + version + '\'' +
                ", movieName='" + movieName + '\'' +
                ", director='" + director + '\'' +
                ", actor='" + actor + '\'' +
                ", region='" + region + '\'' +
                ", duration='" + duration + '\'' +
                ", released=" + released +
                ", releaseDate=" + releaseDate +
                ", stars='" + stars + '\'' +
                ", topped=" + topped +
                ", clickRate=" + clickRate +
                ", shortComment='" + shortComment + '\'' +
                ", introduction='" + introduction + '\'' +
                ", faceSPicture='" + faceSPicture + '\'' +
                ", faceBPicture='" + faceBPicture + '\'' +
                ", stills='" + stills + '\'' +
                '}';
    }
}
