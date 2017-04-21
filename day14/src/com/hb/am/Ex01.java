package com.hb.am;

public class Ex01 {
	public static void main(String args[]){
		Ex01 me =new Ex01();
		me.func1();
	}

	public void func1(){
		System.out.println("func1 run()");
	}
	
	public void func1(int... a){
		for(int tmp : a)
		System.out.println("func1 run()"+tmp);
	}
	
	public void func2(String... st){
		for(String msg : st){
			System.out.println(msg);
		}
	}
}
