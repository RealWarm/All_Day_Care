package com.cen.persistence;

import java.util.List;

import org.apache.catalina.connector.Request;

import com.cen.domain.BoardVO;

public interface FastDao {
	
	public List<BoardVO> create() throws Exception;
	
	public String count() throws Exception;
	
	public String readFile() throws Exception;	
	
}//end class
