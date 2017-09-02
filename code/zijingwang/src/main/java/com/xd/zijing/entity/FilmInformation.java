package com.xd.zijing.entity;

public class FilmInformation {

	/*
	 * �������
	 * �˻�
	 * ��Ӱ��
	 * ӰԺ��
	 * ��λ��
	 * ʱ��
	 * ��Ʊ����
	 * �ܼ۸�
	 * ֧����ʽ
	 * �ö���״̬������ȷ������λ״̬
	 * */

	
	private Integer OrderNumber;
	private String Account;
	private String FilmName;
	private String Cinema;
	private Integer SeatNumber;
	private String Time;
	private Integer Number;
	private float price;
	private String PayMethod;
	private Integer OrderState;
	
	
	
	public Integer getOrderNumber() {
		return OrderNumber;
	}
	public void setOrderNumber(Integer orderNumber) {
		OrderNumber = orderNumber;
	}
	public String getAccount() {
		return Account;
	}
	public void setAccount(String account) {
		Account = account;
	}
	public String getFilmName() {
		return FilmName;
	}
	public void setFilmName(String filmName) {
		FilmName = filmName;
	}
	public String getCinema() {
		return Cinema;
	}
	public void setCinema(String cinema) {
		Cinema = cinema;
	}
	public Integer getSeatNumber() {
		return SeatNumber;
	}
	public void setSeatNumber(Integer seatNumber) {
		SeatNumber = seatNumber;
	}
	public String getTime() {
		return Time;
	}
	public void setTime(String time) {
		Time = time;
	}
	public Integer getNumber() {
		return Number;
	}
	public void setNumber(Integer number) {
		Number = number;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getPayMethod() {
		return PayMethod;
	}
	public void setPayMethod(String payMethod) {
		PayMethod = payMethod;
	}
	public Integer getOrderState() {
		return OrderState;
	}
	public void setOrderState(Integer orderState) {
		OrderState = orderState;
	}
	
 }
