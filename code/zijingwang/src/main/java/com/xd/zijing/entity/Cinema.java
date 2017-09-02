package com.xd.zijing.entity;

public class Cinema {

	private int filmId;
	private String filmName;
	private String cinema;
	private String address;
	private Float price;
	public int getFilmId() {
		return filmId;
	}
	public void setFilmId(int filmId) {
		this.filmId = filmId;
	}
	public String getFilmName() {
		return filmName;
	}
	@Override
	public String toString() {
		return "Cinema [filmId=" + filmId + ", filmName=" + filmName + ", cinema=" + cinema + ", address=" + address
				+ ", price=" + price + "]";
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Float getPrice() {
		return price;
	}
	public void setPrice(Float price) {
		this.price = price;
	}
	
	
}
