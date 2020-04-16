package com.mkpp.bookstore.security;

import org.springframework.boot.web.servlet.MultipartConfigFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import javax.servlet.MultipartConfigElement;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer {

	@Bean
	public BCryptPasswordEncoder pwdEncrypt() {
		return new BCryptPasswordEncoder();
	}

	@Bean
	public MultipartConfigElement multipartConfigElement() {
		MultipartConfigFactory factory = new MultipartConfigFactory();
//		factory.setMaxFileSize("5MB");
//		factory.setMaxRequestSize("5MB");
		return factory.createMultipartConfig();
	}

}
