package com.changinye.www.user.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {

	private static Logger logger = LoggerFactory.getLogger(UserController.class);

	@PostMapping("/user/add")
	public Object add() {
		logger.info("aaa");
		return 111;
	}

}
