package com.hb.model;

import static org.junit.Assert.*;

import java.sql.SQLException;

import org.apache.log4j.Logger;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;


public class Guest04DaoTest {
	Logger log = Logger.getLogger("com.hb.model.Guest04DaoTest");
	Guest04Dao dao = new Guest04Dao();
	
	@BeforeClass
	public static void setUpBeforeClass(){
		System.out.println("BeforeClass");
	}
	@AfterClass
	public static void tearDownAfterClass(){
		System.out.println("AfterClass");
	}
	@Before
	public void setUp(){
		System.out.println("testBefore");
	}
	@After
	public void tearDown(){
		System.out.println("testAfter");
	}
	
	@Test
	public void testSelectAll() throws ClassNotFoundException, SQLException{
		System.out.println("testSelectAll - start");
		assertNotNull(dao.selectAll());
		assertTrue(dao.selectAll().size()>0);
//		assertSame(dao.selectAll().size(), 5);
		
//		log.debug("개발 메시지");
//		log.info("정보 메시지");
//		log.warn("주의 메시지");
//		log.error("에러 메시지");
//		log.fatal("항상 메시지");
		System.out.println("testSelectAll - end");
	}
	
	@Test
	public void testSelectOne() throws ClassNotFoundException, SQLException{
		System.out.println("testSelectOne - start");
		Guest04DTO bean= dao.selectOne(1000);
		assertNotNull(bean);
//		assertEquals(bean.getName(),"user01");
//		assertEquals(bean.getPay(),1111);
		Guest04DTO bean2=new Guest04DTO(1000, "user01", "제목없음", bean.getNalja(), 1111);
		assertEquals(bean2,bean);
		System.out.println("testSelectOne - end");
		
	}

	@Test
	public void testUpdateOne() throws ClassNotFoundException, SQLException {
		System.out.println("testUpdateOne - start");
		int cnt=dao.updateOne(1000, "test", "test", 1111);
		assertSame(1, cnt);
		Guest04DTO bean=dao.selectOne(1000);
		Guest04DTO bean2=new Guest04DTO(1000, "test", "test", null, 1111);
		assertEquals(bean2, bean);
		System.out.println("testUpdateOne - end");
	}
}

