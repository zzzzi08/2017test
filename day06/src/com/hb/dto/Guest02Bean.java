package com.hb.dto;

import java.util.Date;

public class Guest02Bean {
	private int sabun,pay,lvl1,lvl2,lvl3;
	private String name;
	private Date nalja;
	
	public Guest02Bean() {
	}
	
	public void setSabun(int sabun) {
		this.sabun = sabun;
	}
	public void setPay(int pay) {
		this.pay = pay;
	}
	public void setLvl1(int lvl1) {
		this.lvl1 = lvl1;
	}
	public void setLvl2(int lvl2) {
		this.lvl2 = lvl2;
	}
	public void setLvl3(int lvl3) {
		this.lvl3 = lvl3;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setNalja(Date nalja) {
		this.nalja = nalja;
	}
	
	public int getSabun() {
		return sabun;
	}
	public int getPay() {
		return pay;
	}
	public int getLvl1() {
		return lvl1;
	}
	public int getLvl2() {
		return lvl2;
	}
	public int getLvl3() {
		return lvl3;
	}
	public String getName() {
		return name;
	}
	public Date getNalja() {
		return nalja;
	}
	
}