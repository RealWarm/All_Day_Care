package com.cen.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.cen.domain.BoardVO;

import lombok.extern.log4j.Log4j;

@Log4j
@Repository
public class FastDaoImpl implements FastDao {
	
	@Inject
	private SqlSession session;
	
	private static final String namespace="com.cen.mapper.BoardMapper";

	@Override
	public List<BoardVO> create() throws Exception {
		// return session.selectOne(namespace + ".create");
		return session.selectList(namespace + ".create");
	}//create

	@Override
	public String count() throws Exception {		
		return session.selectOne(namespace + ".count");
	}//count
	
	
	
}//end class
