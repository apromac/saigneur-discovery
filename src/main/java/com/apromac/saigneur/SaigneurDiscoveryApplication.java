package com.apromac.saigneur;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@SpringBootApplication
@EnableEurekaServer
public class SaigneurDiscoveryApplication {

	public static void main(String[] args) {
		SpringApplication.run(SaigneurDiscoveryApplication.class, args);
	}

}
