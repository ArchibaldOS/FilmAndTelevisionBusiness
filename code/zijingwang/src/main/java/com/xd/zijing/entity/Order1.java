package com.xd.zijing.entity;

public class Order1 {

	
	private String account;
	private String cinema;
	private String filmHall;
	private String filmName;
	private String filmTime;
	private int seatId;
	private Float cost;
	public Float getCost() {
		return cost;
	}
	public void setCost(Float cost) {
		this.cost = cost;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
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
	public int getSeatId() {
		return seatId;
	}
	public void setSeatId(int seatId) {
		this.seatId = seatId;
	}
	@Override
	public String toString() {
		return "Order [account=" + account + ", cinema=" + cinema + ", filmHall=" + filmHall + ", filmName=" + filmName
				+ ", filmTime=" + filmTime + ", seatId=" + seatId + ", cost=" + cost + "]";
	}
	
	
	
}
