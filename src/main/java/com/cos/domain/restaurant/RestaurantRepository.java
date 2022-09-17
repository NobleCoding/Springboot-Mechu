package com.cos.domain.restaurant;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

public interface RestaurantRepository extends JpaRepository<Restaurant, Integer>{

	@Query(value = "SELECT addr FROM restaurant", nativeQuery = true)
	List<String> mSelectAddr();
	
	@Query(value = "SELECT * FROM restaurant WHERE sort like %:sort%", nativeQuery = true)
	List<Restaurant> mSelectBySort(String sort);
	
	@Modifying
	@Query(value= "UPDATE restaurant SET lat= :lat, lng= :lng WHERE addr= :addr ", nativeQuery = true)
	int mSetLatLng(double lat, double lng, String addr);
}
