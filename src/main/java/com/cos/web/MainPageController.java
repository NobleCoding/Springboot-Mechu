package com.cos.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class MainPageController {

	@GetMapping("/geocoding")
	public String geocoding() {
		return "/geocoding";
	}
	
	@GetMapping("/")
	public String mainPage() {
		
		return "/layout/main";
	}
	
	
}
