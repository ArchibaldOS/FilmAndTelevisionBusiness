package com.xd.zijing.entity;
//��Ӱ��Ϣʵ����
import java.util.List;

public class Information {
	
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
	
	public String getScore() {
		return score;
	}

	public void setScore(String score) {
		this.score = score;
	}

	public String getPost() {
		return post;
	}

	public void setPost(String post) {
		this.post = post;
	}

	private List<Information> Informations;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	@Override
	public String toString() {
		return "Information [id=" + id + ", name=" + name + ", releasedate=" + releasedate + ", filmtype=" + filmtype
				+ ", filmtime=" + filmtime + ", actor=" + actor + ", description=" + description + ", price=" + price
				+ ", country=" + country + ", Informations=" + Informations + ",post=" + post + ",score=" + score + "]";
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

	public List<Information> getInformations() {
		return Informations;
	}

	public void setInformations(List<Information> informations) {
		Informations = informations;
	}
	
	
}
