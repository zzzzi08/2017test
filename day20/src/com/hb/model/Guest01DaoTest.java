package com.hb.model;

import static org.junit.Assert.*;

import java.util.ArrayList;

import org.junit.Test;

public class Guest01DaoTest {

	@Test
	public void testSelectAll() {
		Guest01Dao dao = new Guest01Dao();
		ArrayList<Guest01Dto> list = dao.selectAll();
		assertNotNull(list);
		assertTrue(list.size()>0);
		for(Guest01Dto bean:list){
			System.out.println(bean);
		}
	}

}
