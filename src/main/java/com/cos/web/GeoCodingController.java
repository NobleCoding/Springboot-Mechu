package com.cos.web;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.domain.restaurant.Restaurant;
import com.cos.service.RestaurantService;
import com.cos.web.dto.resaurant.RestaurantApiDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class GeoCodingController {

	private final RestaurantService restaurantService;

//	@ResponseBody
//	@RequestMapping(value ="/api/addr", method= {RequestMethod.POST})
//	public void geocoding(@RequestParam("addr") String addr, @RequestParam("lat") String lat,@RequestParam("lng") String lng) {
//		System.out.println(lat + " , " + lng+ ", " + addr);
//	}
	
	@GetMapping("/api/load")
	public String load_save(Model model) {
		 String result = "";
		
		 try {
	           URL url = new URL("https://api.odcloud.kr/api/15035759/v1/uddi:2279f284-e6b4-47b5-92bc-f20bbdda8a19_201908221042" 
	           + "?page=1&perPage=100" +  "&serviceKey="+"YPLrMrWpTuH2uv9%2FmnXGeplqnRlxstW28%2FzEel4440emCYjrHkhD9zGlUq%2FaN%2FO27gNZe3rSWSvoTQG6BhK7pA%3D%3D");
	           BufferedReader bf;
	           bf = new BufferedReader(new InputStreamReader(url.openStream(), "UTF-8"));
	           result = bf.readLine();
	           System.out.println(result);
	           
	           JSONParser jsonParser = new JSONParser();
	           JSONObject jsonObject = (JSONObject)jsonParser.parse(result);
	           JSONArray jsonArray = (JSONArray)jsonObject.get("data");
	          for(int i=0; i<jsonArray.size(); i++) {
	        	  JSONObject obj=(JSONObject)jsonArray.get(i);
	        	String name= (String)obj.get("업소명");
	        	String sort= (String)obj.get("업태명");
	        	String addr= (String)obj.get("소재지(도로명)");
	        	RestaurantApiDto restDto=new RestaurantApiDto(name,addr,sort);
	        	Restaurant rst = restDto.toEntity();
	        	restaurantService.insert(rst);
	          }
		}catch(Exception e) {
	           e.printStackTrace();   
	       }
	       return "/layout/main";
	}
}
