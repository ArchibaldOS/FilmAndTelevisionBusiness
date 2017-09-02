package com.xd.zijing.entity;

public class Info {

	
	private int id;
	private String name;
	private String releasedate;
	private String filmtype;
	private String filmtime;
	private String actor;
	private String description;
	private String price;
	private String country;
	private String post;
	private String score;
	private String shabi;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Override
	public String toString() {
		return "Info [id=" + id + ", name=" + name + ", releasedate=" + releasedate + ", filmtype=" + filmtype
				+ ", filmtime=" + filmtime + ", actor=" + actor + ", description=" + description + ", price=" + price
				+ ", country=" + country + ", post=" + post + ", score=" + score + ", shabi=" + shabi + "]";
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getReleasedate() {
		return releasedate;
	}
	public void setReleasedate(String releasedate) {
		this.releasedate = releasedate;
	}
	public String getFilmtype() {
		return filmtype;
	}
	public void setFilmtype(String filmtype) {
		this.filmtype = filmtype;
	}
	public String getFilmtime() {
		return filmtime;
	}
	public void setFilmtime(String filmtime) {
		this.filmtime = filmtime;
	}
	public String getActor() {
		return actor;
	}
	public void setActor(String actor) {
		this.actor = actor;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}
	public String getShabi() {
		return shabi;
	}
	public void setShabi(String shabi) {
		this.shabi = shabi;
	}
	
	
	
}
