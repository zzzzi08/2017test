package com.hb.dto;

public class LoginBean {
	private String name;
	private int pay;
	private int result;
	
	
	public LoginBean() {
	}
	
	public String getName() {
		return name;
	}
	public int getPay() {
		return pay;
	}
	public int getResult() {
		return result;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	public void setPay(int pay) {
		this.pay = pay;
	}
	public void setResult(int result) {
		this.result = result;
	}
	
}
