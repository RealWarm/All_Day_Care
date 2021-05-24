package com.cen.persistence;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.List;

import javax.inject.Inject;

import org.apache.catalina.connector.Request;
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

	@Override
	public String readFile(String url) throws Exception {
		Request request;
		String all=null;
		
		 try{
			 
			 String url = request.getSession().getServletContext().getRealPath("/")+"/resources/testDB.txt";
            //���� ��ü ����
            // File file = new File("C:\\App\\eGovFrameDev-3.9.0-64bit\\eclipse\\workspace\\Try_2\\testDB.txt");
			File file = new File(url);
            //�Է� ��Ʈ�� ����
            FileReader filereader = new FileReader(file);
            //�Է� ���� ����
            BufferedReader bufReader = new BufferedReader(filereader);
            String line = "";
            while((line = bufReader.readLine()) != null){
//                System.out.println(line);
                all+=line;
                all+="\n";
            }
            //.readLine()�� ���� ���๮�ڸ� ���� �ʴ´�.            
            bufReader.close();
        }catch (FileNotFoundException e) {
        	
        }catch(IOException e){
            System.out.println(e);
        }//try-catch
		
		return all;
	}//readFile

	
}//end class
