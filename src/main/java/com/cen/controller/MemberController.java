package com.cen.controller;

import javax.inject.Inject;

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
	public String loginGet(Model model) throws Exception {		
//		log.info("MemberController :: public String loginGet() invoked!!!!");		
//		return "login";		
		String tmp = dao.readFile();
		System.out.println();
		System.out.println();
		System.out.println();
		System.out.println("===========================================");
		System.out.println(tmp);
		model.addAttribute("show", tmp);		
		return "testDB";
	}//loginGet	
	
	@GetMapping("/saleregist")
	public String adminAddorgan() throws Exception {		
		log.info("MemberController :: public String loginGet() invoked!!!!");		
		return "saleregist";		
	}//loginGet		
	
	
	
}//end class











































