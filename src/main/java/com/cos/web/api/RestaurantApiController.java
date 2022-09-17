package com.cos.web.api;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.cos.domain.restaurant.Restaurant;
import com.cos.service.RestaurantService;
import com.cos.web.dto.CMRespDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RestController
public class RestaurantApiController {

	private final RestaurantService restaurantService;
	
	@GetMapping("/api/bysort")
	public ResponseEntity<?> selectBySort(@RequestParam String sort){
		
		List<Restaurant> list=restaurantService.selectBySort(sort);
		System.out.println(list);
		return new ResponseEntity<>(new CMRespDto<>(1, "성공", list), HttpStatus.OK);
	}
	
}
