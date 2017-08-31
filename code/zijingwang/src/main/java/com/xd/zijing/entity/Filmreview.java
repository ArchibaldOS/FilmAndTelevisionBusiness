package com.xd.zijing.entity;

public class Filmreview {
	
	private int id;
	private String name;
	private String nickname;
	private String review;
	
	@Override
	public String toString() {
		return "Filmreview [id=" + id + ", name=" + name + ", nickname=" + nickname + ", review=" + review + "]";
	}
	
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
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getReview() {
		return review;
	}
	public void setReview(String review) {
		this.review = review;
	}
}
