package com.cen.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
//@RequestMapping("/member")
public class MemberController {

	@GetMapping("/login")
	public String loginGet() throws Exception {		
		log.info("MemberController :: public String loginGet() invoked!!!!");		
		return "login";		
	}//loginGet	
	
	@GetMapping("/saleregist")
	public String adminAddorgan() throws Exception {		
		log.info("MemberController :: public String loginGet() invoked!!!!");		
		return "saleregist";		
	}//loginGet	
	
}//end class
