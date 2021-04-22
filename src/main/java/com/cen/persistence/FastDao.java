package com.cen.persistence;

import java.util.List;

import com.cen.domain.BoardVO;

public interface FastDao {
	
	public List<BoardVO> create() throws Exception;
	
	public int count() throws Exception;
	
}//end class
