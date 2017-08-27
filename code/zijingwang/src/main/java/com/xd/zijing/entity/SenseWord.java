package com.xd.zijing.entity;

public class SenseWord {
	
	private int senseId;
	private String senseContent;
	public int getSenseId() {
		return senseId;
	}
	public void setSenseId(int senseId) {
		this.senseId = senseId;
	}
	public String getSenseContent() {
		return senseContent;
	}
	public void setSenseContent(String senseContent) {
		this.senseContent = senseContent;
	}
	@Override
	public String toString() {
		return "SenseWord:[id = "+ senseId +",content = "+ senseContent+"]";
	}
	
	
	

}
