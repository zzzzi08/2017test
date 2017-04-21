package com.hb.test;

import org.junit.Test;
import static org.junit.Assert.*;	//공통되는 부분을 import로 뺄때는 static을 써야함
public class TestEx01 {

	@Test
	public void testFunc1(){
		int a, b, c;
		a=3;
		b=2;
		c=a+b;
		assertSame(5, c);
		assertNotSame(6, c);
	}
	@Test
	public void testFunc3() {
		assertNull(null);
		assertNotNull(new String());
	}
	
	@Test
	public void testFunc5() {
		int[] arr1={1,2};
		int[] arr2={1,2};
		assertArrayEquals(arr1, arr2);
	}
	
}
