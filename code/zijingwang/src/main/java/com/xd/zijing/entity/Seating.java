package com.xd.zijing.entity;

public class Seating {

	
	private int seatId;
	private int seatRows;
	private int seatColumn;
	private String seatValue;
	private String cinema;
	private String filmHall;
	private String filmName;
	private String filmTime;
	public String getFilmName() {
		return filmName;
	}
	public void setFilmName(String filmName) {
		this.filmName = filmName;
	}
	public String getFilmTime() {
		return filmTime;
	}
	public void setFilmTime(String filmTime) {
		this.filmTime = filmTime;
	}
	public String getCinema() {
		return cinema;
	}
	public void setCinema(String cinema) {
		this.cinema = cinema;
	}
	public String getFilmHall() {
		return filmHall;
	}
	public void setFilmHall(String filmHall) {
		this.filmHall = filmHall;
	}
	public int getSeatId() {
		return seatId;
	}
	
	

	@Override
	public String toString() {
		return "Seating [seatId=" + seatId + ", seatRows=" + seatRows + ", seatColumn=" + seatColumn + ", seatValue="
				+ seatValue + ", cinema=" + cinema + ", filmHall=" + filmHall + ", filmName=" + filmName + ", filmTime="
				+ filmTime + "]";
	}
	public void setSeatId(int seatId) {
		this.seatId = seatId;
	}
	public int getSeatRows() {
		return seatRows;
	}
	public void setSeatRows(int seatRows) {
		this.seatRows = seatRows;
	}
	public int getSeatColumn() {
		return seatColumn;
	}
	public void setSeatColumn(int seatColumn) {
		this.seatColumn = seatColumn;
	}
	public String getSeatValue() {
		return seatValue;
	}
	public void setSeatValue(String seatValue) {
		this.seatValue = seatValue;
	}
	
	
}
