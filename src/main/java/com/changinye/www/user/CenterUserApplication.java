package com.changinye.www.user;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@SpringBootApplication
@EnableEurekaClient
public class CenterUserApplication {

	private static Logger logger = LoggerFactory.getLogger(CenterUserApplication.class);
	private static String name = "【User用户中心】";

	public static void main(String[] args) {
		SpringApplication.run(CenterUserApplication.class, args);
		logger.info("【启动微服务成功】{}", name);
	}

}
