
var HOME_PATH = window.HOME_PATH || '.';
var a;
var b;
var mapDiv = document.getElementById('map');

var cityhall = new naver.maps.LatLng(37.5666805, 126.9784147);
var jungnangCenter= new naver.maps.LatLng(37.5975129 ,  127.0922132),
	map = new naver.maps.Map(mapDiv,{
		center: jungnangCenter.destinationPoint(0, 0),
		zoom: 13
	}),
	marker = new naver.maps.Marker({
		map: map,
		position: cityhall
	});

/*
var cityhall = new naver.maps.LatLng(37.5666805, 126.9784147),
	map = new naver.maps.Map('map', {
		center: cityhall.destinationPoint(0, 500),
		zoom: 15
	}),
	marker = new naver.maps.Marker({
		map: map,
		position: cityhall
	});

var contentString = [
	'<div class="iw_inner">',
	'   <h3>서울특별시청</h3>',
	'   <p>서울특별시 중구 태평로1가 31 | 서울특별시 중구 세종대로 110 서울특별시청<br />',
	'       <img src="' + HOME_PATH + '/img/example/hi-seoul.jpg" width="55" height="55" alt="서울시청" class="thumb" /><br />',
	'       02-120 | 공공,사회기관 &gt; 특별,광역시청<br />',
	'       <a href="http://www.seoul.go.kr" target="_blank">www.seoul.go.kr/</a>',
	'   </p>',
	'</div>'
].join('');

var infowindow = new naver.maps.InfoWindow({
	content: contentString
});

naver.maps.Event.addListener(marker, "click", function(e) {
	if (infowindow.getMap()) {
		infowindow.close();
	} else {
		infowindow.open(map, marker);
	}
});

infowindow.open(map, marker);
*/

function changeMarker(sort) {
	console.log(sort);
	$.ajax({
		method: "get",
		url: "api/bysort",
		data: {
			"sort": sort
		}
		
	}).done(res => {
		console.log(res.data);

		res.data.forEach(function(e) {

			var location = new naver.maps.LatLng(e.lat, e.lng);

			var marker = new naver.maps.Marker({
				map: map,
				position: location
			});
			
			var contentString = [
				'<div class="iw_inner">',
				`   <h3 style= "color: black">`+e.name+`</h3>`,
				`   <p style= "color: black">`+e.addr+`<br />`,
				'   ★★★★☆ ',
				'       <a href="http://www.seoul.go.kr" target="_blank">www.seoul.go.kr/</a>',
				'   </p>',
				'</div>'
			].join('');

			var infowindow = new naver.maps.InfoWindow({
				content: contentString
			});
			
			
			// 마커 클릭 이벤트
			naver.maps.Event.addListener(marker, "click", function() {
				if (infowindow.getMap()) {
					infowindow.close();
				} else {
					infowindow.open(map, marker);
					const name =document.getElementById("rstName");
					const addr =document.getElementById("rstAddr");
					name.innerHTML = e.name;
					addr.innerHTML = e.addr;
				}
			
			});

		});
	}).fail(error => {
		console.log("오류", error);
	});
};

/*
// 중랑 마커 10개 표시 , 주소를 위도,경도 값으로 변경
function basicMarker() {
	$.ajax({
		method: "get",
		url: "https://api.odcloud.kr/api/15035759/v1/uddi:2279f284-e6b4-47b5-92bc-f20bbdda8a19_201908221042",
		data: {
			page: "1",
			perPage: "10",
			serviceKey: "YPLrMrWpTuH2uv9/mnXGeplqnRlxstW28/zEel4440emCYjrHkhD9zGlUq/aN/O27gNZe3rSWSvoTQG6BhK7pA=="
		},
	}).done(res => {
		console.log(res.data);

		res.data.forEach(async function(it) {
			var keys = Object.keys(it);
			var key = keys[0];
			// console.log(it[key]); // 주소 밸류값 뽑아오기
			console.log(it.업소명);
			console.log(it[key]);
			var XY= geocoding(it[key]);
			console.log(XY.lat+" @@@@  " +XY.lng)
			var location = new naver.maps.LatLng(XY.lat, XY.lng);

			var marker = new naver.maps.Marker({
				map: map,
				position: location
			});
			
			var contentString = [
				'<div class="iw_inner">',
				`   <h3 style= "color: black">`+it.업소명+`</h3>`,
				`   <p style= "color: black">`+it[key]+`<br />`,
				'   ★★★★☆ ',
				'       <a href="http://www.seoul.go.kr" target="_blank">www.seoul.go.kr/</a>',
				'   </p>',
				'</div>'
			].join('');

			var infowindow = new naver.maps.InfoWindow({
				content: contentString
			});
			
			
			// 마커 클릭 이벤트
			naver.maps.Event.addListener(marker, "click", function(e) {
				if (infowindow.getMap()) {
					infowindow.close();
				} else {
					infowindow.open(map, marker);
					const name =document.getElementById("rstName");
					const addr =document.getElementById("rstAddr");
					name.innerHTML = it.업소명;
					addr.innerHTML = it[key];
				}
			
			});

		});
	}).fail(error => {
		console.log("오류", error);
	});
};
basicMarker();
 */

/*
function jungnangRestaurants() {
	$.ajax({
		method: "get",
		url: "https://api.odcloud.kr/api/15035759/v1/uddi:2279f284-e6b4-47b5-92bc-f20bbdda8a19_201908221042",
		data: {
			page: "1",
			perPage: "10",
			serviceKey: "YPLrMrWpTuH2uv9/mnXGeplqnRlxstW28/zEel4440emCYjrHkhD9zGlUq/aN/O27gNZe3rSWSvoTQG6BhK7pA=="
		},
	}).done(res => {
		console.log(res.data);

		res.data.forEach(function(it) {
			var keys = Object.keys(it);
			var key = keys[0];
			console.log(key);
			console.log()
			//console.log(it[key]); // 주소 밸류값 뽑아오기

			var location = new naver.maps.LatLng(37.5666805, 126.9784147);

			var marker = new naver.maps.Marker({
				map: map,
				position: location
			});

			var contentString = [
				'<div class="iw_inner">',
				'   <h3>서울특별시청</h3>',
				'   <p>서울특별시 중구 태평로1가 31 | 서울특별시 중구 세종대로 110 서울특별시청<br />',
				'       <img src="' + HOME_PATH + '/img/example/hi-seoul.jpg" width="55" height="55" alt="서울시청" class="thumb" /><br />',
				'       02-120 | 공공,사회기관 &gt; 특별,광역시청<br />',
				'       <a href="http://www.seoul.go.kr" target="_blank">www.seoul.go.kr/</a>',
				'   </p>',
				'</div>'
			].join('');

			var infowindow = new naver.maps.InfoWindow({
				content: contentString
			});

			naver.maps.Event.addListener(marker, "click", function(e) {
				if (infowindow.getMap()) {
					infowindow.close();
				} else {
					infowindow.open(map, marker);
				}
			});

		});
	}).fail(error => {
		console.log("오류", error);
	})
}

jungnangRestaurants();
*/

// 지오코딩
function geocoding(addr) {
	var XY=new Object();
	$.ajax({
		method: "get",
		url: "https://naveropenapi.apigw.ntruss.com/map-geocode/v2/geocode",
		async: false,
		headers: {
			"X-NCP-APIGW-API-KEY-ID": "vkfmpgwlm0",
			"X-NCP-APIGW-API-KEY": "QPAaEWcHEmHOQES14rwfJsRqrJ1h5piICLj31dLA"
		},
		data: {
			query: addr
		}

	}).done(res => {
		a=res.addresses[0].x;
		b=res.addresses[0].y;
		XY.lat = b // 위도
		XY.lng = a // 경도
		
	}).fail(error => {
		console.log("오류", error);
	});
	
	return XY;
}





/*
var mapDiv = document.getElementById('map');
	var map = new naver.maps.Map(mapDiv);

// 위도 경도 띄우기
$(document).ready(async function(){
	var XY= await getLocation();
	
	alert("위도"+XY.lat);
	alert("경도"+XY.lng);
	
});

// 내위치 위도 경도 찾기
async function getLocation(){
	var XY= new Object();
	if(navigator.geolocation){
		
		var promise = new Promise((resolve, rejected) => {
			navigator.geolocation.getCurrentPosition((position)=>{
				resolve(position);
			});
		});
		
		var position = await promise;
		XY.lat = position.coords.latitude // 위도
		XY.lng = position.coords.longitude // 경도
	}
	console.log(XY);
	return XY;
};

getLocation();
*/

// 관성 드래깅 옵션
$("#kinetic").on("click", function(e) {
	e.preventDefault();

	if (map.getOptions("disableKineticPan")) {
		map.setOptions("disableKineticPan", false); //관성 드래깅 켜기
		$(this).addClass("control-on");
	} else {
		map.setOptions("disableKineticPan", true); //관성 드래깅 끄기
		$(this).removeClass("control-on");
	}
});
