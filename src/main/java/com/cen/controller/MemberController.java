package com.cen.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/member")
public class MemberController {

	@GetMapping("/login")
	public String loginGet() throws Exception {
		log.info("+++++ MemberController :: public String loginGet() invoked!!!!");		
		return "login";	
	}//memberLogin
	
	
	
}//end class
