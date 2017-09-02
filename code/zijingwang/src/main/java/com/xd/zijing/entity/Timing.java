package com.xd.zijing.entity;

public class Timing {

	private int timeId;
	private String filmName;
	private String cinema;
	private String filmTime;
	private String filmHall;
	public String getFilmHall() {
		return filmHall;
	}
	public void setFilmHall(String filmHall) {
		this.filmHall = filmHall;
	}
	public int getTimeId() {
		return timeId;
	}
	public void setTimeId(int timeId) {
		this.timeId = timeId;
	}
	public String getFilmName() {
		return filmName;
	}
	public void setFilmName(String filmName) {
		this.filmName = filmName;
	}
	public String getCinema() {
		return cinema;
	}
	public void setCinema(String cinema) {
		this.cinema = cinema;
	}
	public String getFilmTime() {
		return filmTime;
	}
	public void setFilmTime(String filmTime) {
		this.filmTime = filmTime;
	}
	@Override
	public String toString() {
		return "Timing [timeId=" + timeId + ", filmName=" + filmName + ", cinema=" + cinema + ", filmTime=" + filmTime
				+ ", filmHall=" + filmHall + "]";
	}
	
	
}
