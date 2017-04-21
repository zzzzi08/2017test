package com.hb.dto;

import java.sql.Timestamp;

public class Guest03Bean {
	private int sabun, pay;
	private Timestamp nalja;
	private String name;
	
	public Guest03Bean(){	
	}
	
	public int getSabun() {
		return sabun;
	}
	public String getName() {
		return name;
	}
	public Timestamp getNalja() {
		return nalja;
	}
	public int getPay() {
		return pay;
	}
	public void setSabun(int sabun) {
		this.sabun = sabun;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setNalja(Timestamp nalja) {
		this.nalja = nalja;
	}
	public void setPay(int pay) {
		this.pay = pay;
	}
	
	
}
