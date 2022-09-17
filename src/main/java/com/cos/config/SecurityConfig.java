package com.cos.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;



@EnableWebSecurity // 해당 파일로 시큐리티를 활성화
@Configuration //IoC   
public class SecurityConfig extends WebSecurityConfigurerAdapter{

	@Bean
	public BCryptPasswordEncoder encode() {
		return new BCryptPasswordEncoder();
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		// super 삭제 - 기존 시큐리티가 가지고 있는 기능이 다 비활성화됨.
		http.csrf().disable();
		http.authorizeRequests()
			.antMatchers("/user/**", "/image/**", "/subscribe/**", "/comment/**").authenticated() //인증이 필요한 페이지  
			.antMatchers("/admin").hasRole("ADMIN")
			.anyRequest().permitAll() // 그 외 모든요청 허용
			.and()
			.formLogin() 
			.loginPage("/auth/signin") // GET , 인증 필요할 때 이 페이지로 이동
			.loginProcessingUrl("/auth/signin") // POST -> 스프링 시큐리티가 로그인 프로세스 진행
			.defaultSuccessUrl("/");  // 로그인 성공시

			
	}
	
}
