package com.xd.zijing.entity;

/**
 * Created by lenovo on 2017/8/21.
 */
public class MovieType {
    
    private int movieTypeId;

    private String movieTypeName;

    public int getMovieTypeId() {
        return movieTypeId;
    }

    public void setMovieTypeId(int movieTypeId) {
        this.movieTypeId = movieTypeId;
    }

    public String getMovieTypeName() {
        return movieTypeName;
    }

    public void setMovieTypeName(String movieTypeName) {
        this.movieTypeName = movieTypeName;
    }

    @Override
    public String toString() {
        return "MovieTypeDao{" +
                "movieTypeId=" + movieTypeId +
                ", movieTypeName='" + movieTypeName + '\'' +
                '}';
    }
}
