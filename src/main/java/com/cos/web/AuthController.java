package com.cos.web;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.cos.domain.user.User;
import com.cos.service.AuthService;
import com.cos.web.dto.auth.SignupDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class AuthController {

	private final AuthService authService;
	
	@GetMapping("/auth/signin")
	public String signinForm() {
		
		return "/auth/signin";
	}
	
	@GetMapping("/auth/signup")
	public String signupForm() {
		
		return "/auth/signup";
	}
	
	@PostMapping("/auth/signup")
	public String signup(@Valid SignupDto signupDto, BindingResult bindingResult) {
		
		User user = signupDto.toEntity();
		System.out.println("gd"+signupDto.toEntity());
		authService.signup(user);
		return "/layout/main";
	}
}
