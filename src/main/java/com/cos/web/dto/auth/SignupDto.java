package com.cos.web.dto.auth;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import com.cos.domain.user.User;

import lombok.Data;

@Data
public class SignupDto {

	@NotBlank
	@Size(min= 2, max= 20)
	private String username;
	@NotBlank
	private String password;
	@NotBlank
	private String email;
	@NotBlank
	private String name;
	
	public User toEntity() {
		return User.builder()
				.username(username)
				.password(password)
				.email(email)
				.name(name)
				.build();
	}
}
