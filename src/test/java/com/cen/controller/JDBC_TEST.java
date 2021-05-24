package com.cen.controller;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.List;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.cen.domain.BoardVO;
import com.cen.persistence.FastDao;

import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class JDBC_TEST {

//	static {
//		try {
//			Class.forName("oracle.jdbc.driver.oracleDriver");
//		}catch(Exception e){
//			e.printStackTrace();
//		}//try
//	}//static
	
	@Test
	public void testConnection() {
		log.info("JDBC_TEST :: testConnection() invoked!!!!");
		try(Connection con=
				DriverManager.getConnection(
						"jdbc:oracle:thin:@localhost:1521:XE",
						"all_care",
						"all_care"
						)){
			log.info("+++++++ "+con);
		}catch(Exception e) {
			e.printStackTrace();
		}//try
		
	}//testConnection	
	
	@Inject
	private DataSource ds;
	
	@Test
	public void testDataSource() {
		log.info("+++++++++++++++JDBC_TEST :: testDataSource() invoked!!!!"); 		
		try(Connection con = ds.getConnection()){			
			log.info("++++++" + con);
		}catch(Exception e) {
			fail(e.getMessage());
		}//try		
	}//testDataSource
	
	
	  @Inject 
	  private FastDao dao;
	  
	  @Test 
	  public void testDao() throws Exception {
		  System.out.println("@@@@@@@@@@ " + dao); 
		  List<BoardVO> vo = dao.create();
		  int n=0;
		  for(BoardVO e : vo) {
			  n++;
			  System.out.println(n + " " +e);
		  }//for
	  }//testDao
	  
	  @Test
	  public void testCount() throws Exception{		  
		  System.out.println("@@@@@@@@@@@@@@@@@@@@@@ ++++ " + dao.count());
	  }//testCount
	 
	  @Inject
	  FastDao dao1;
		  
	  @Test
	  public void test1() throws Exception{		  
		  String tmp = dao1.readFile();
		  System.out.println("=======================");
		  System.out.println(tmp);
	  }//testCount
	  
}//end class











