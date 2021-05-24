package com.cen.controller;

import javax.inject.Inject;

import org.apache.catalina.connector.Request;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.cen.persistence.FastDao;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class MemberController {

	@Inject
	FastDao dao;
	
	@GetMapping("/login")
	public String loginGet(Model model, Request request) throws Exception {		
//		log.info("MemberController :: public String loginGet() invoked!!!!");		
//		return "login";		
		String url = request.getSession().getServletContext().getRealPath("/")+"/resources/testDB.txt";
		System.out.println("+++++++++++++ " + url);
		String tmp = dao.readFile(url);
	
		System.out.println();
		System.out.println();
		System.out.println();
		System.out.println("===========================================");
		System.out.println(tmp);
		model.addAttribute("show", tmp);		
		return "testDB";
	}//loginGet	
	
//	@GetMapping("/saleregist")
//	public String adminAddorgan() throws Exception {		
//		log.info("MemberController :: public String loginGet() invoked!!!!");		
//		return "saleregist";		
//	}//loginGet		
	
	
	
}//end class











































