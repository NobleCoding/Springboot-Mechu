package com.cos.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.domain.restaurant.Restaurant;
import com.cos.domain.restaurant.RestaurantRepository;
import com.cos.web.dto.resaurant.SetLatLngDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class RestaurantService {

	private final RestaurantRepository restaurantRepository;
	
	@Transactional
	public List<Restaurant> selectBySort(String sort) {
		System.out.println("잘돼??");
		return restaurantRepository.mSelectBySort(sort);
	}
	
	@Transactional
	public void setLatLng(SetLatLngDto setLatLngDto) {
		String addr=setLatLngDto.getAddr();
		Double lat=setLatLngDto.getLat();
		Double lng=setLatLngDto.getLng();
		restaurantRepository.mSetLatLng(lat, lng, addr);
	}
	
	@Transactional
	public Restaurant insert(Restaurant restaurant) {
		Restaurant restaurantEntity=restaurantRepository.save(restaurant);
		return restaurantEntity;
	}
	
	@Transactional
	public List<String> selectAddr() {
		return restaurantRepository.mSelectAddr();
	}
}
