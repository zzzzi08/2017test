package com.hb.model;

import java.util.Date;

public class Guest01Dto {
//bean == dto
	private int sabun;
	private String name;
	private Date nalja;
	private int pay;
	
	public Guest01Dto() {
		// TODO Auto-generated constructor stub
	}

	public int getSabun() {
		return sabun;
	}

	public void setSabun(int sabun) {
		this.sabun = sabun;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getNalja() {
		return nalja;
	}

	public void setNalja(Date nalja) {
		this.nalja = nalja;
	}

	public int getPay() {
		return pay;
	}

	public void setPay(int pay) {
		this.pay = pay;
	}

	@Override
	public String toString() {
		return "Guest01Dto [sabun=" + sabun + ", name=" + name + ", nalja="
				+ nalja + ", pay=" + pay + "]";
	}
	
	
	
/*	
 	//이렇게 직접 써서 오버라이드 할수 있고 마우스 오른쪽버튼 ->source -> Generate toString()클릭해서 할수있음
 	@Override
		public String toString() {
			String msg = "sabun:"+sabun+", name:"+name+", nalja:"+nalja+", pay:"+pay;
			
			return msg;
		}*/
}
