package com.xd.zijing.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * Created by lenovo on 2017/8/21.
 */
public class Movie {

    private int id;

    private String filmtype;

    private String name;

    private String director;

    private String actor;

    private String country;

    private String filmtime;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date releasedate;

    private String score;

    private String price;

    private String description;

    private String post;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFilmtype() {
        return filmtype;
    }

    public void setFilmtype(String filmtype) {
        this.filmtype = filmtype;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getFilmtime() {
        return filmtime;
    }

    public void setFilmtime(String filmtime) {
        this.filmtime = filmtime;
    }

    public Date getReleasedate() {
        return releasedate;
    }

    public void setReleasedate(Date releasedate) {
        this.releasedate = releasedate;
    }

    public String getScore() {
        return score;
    }

    public void setScore(String score) {
        this.score = score;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPost() {
        return post;
    }

    public void setPost(String post) {
        this.post = post;
    }

    @Override
    public String toString() {
        return "Movie{" +
                "id=" + id +
                ", filmtype='" + filmtype + '\'' +
                ", name='" + name + '\'' +
                ", director='" + director + '\'' +
                ", actor='" + actor + '\'' +
                ", country='" + country + '\'' +
                ", filmtime='" + filmtime + '\'' +
                ", releasedate=" + releasedate +
                ", score='" + score + '\'' +
                ", price='" + price + '\'' +
                ", description='" + description + '\'' +
                ", post='" + post + '\'' +
                '}';
    }
}
