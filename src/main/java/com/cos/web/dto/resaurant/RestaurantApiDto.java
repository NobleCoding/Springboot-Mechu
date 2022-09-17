package com.cos.web.dto.resaurant;

import javax.validation.constraints.NotBlank;
import com.cos.domain.restaurant.Restaurant;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class RestaurantApiDto {
	
	@NotBlank
	private String name;
	@NotBlank
	private String addr;
	@NotBlank
	private String sort;
	
	public Restaurant toEntity() {
		return Restaurant.builder()
				.name(name)
				.addr(addr)
				.sort(sort)
				.build();
	}
	
}
