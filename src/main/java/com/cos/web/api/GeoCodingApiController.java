package com.cos.web.api;

import java.util.List;

import org.springframework.data.repository.query.Param;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.cos.service.RestaurantService;
import com.cos.web.dto.CMRespDto;
import com.cos.web.dto.resaurant.SetLatLngDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RestController
public class GeoCodingApiController {

	private final RestaurantService restaurantService;
	
	@PutMapping("/api/addr")
	public ResponseEntity<?> commentSave(@RequestParam("addr") String addr, @RequestParam("lat") String latVal ,@RequestParam("lng") String lngVal) {
		double lat=Double.parseDouble(latVal);
		double lng=Double.parseDouble(lngVal);
		SetLatLngDto dto=new SetLatLngDto(lat, lng, addr);
		restaurantService.setLatLng(dto);

		
		return new ResponseEntity<>(new CMRespDto<>(1, "성공", null), HttpStatus.OK);
	}
	
	@GetMapping("/api/addr")
	public ResponseEntity<?> addrLoad() {
		List<String> addrList= restaurantService.selectAddr();
		
		return new ResponseEntity<>(new CMRespDto<>(1, "성공", addrList),HttpStatus.OK);
	}
}
