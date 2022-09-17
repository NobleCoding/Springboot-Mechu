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
public class SetLatLngDto {

	@NotBlank
	private Double lat;
	@NotBlank
	private Double lng;
	@NotBlank
	private String addr;

	
}
