
var XY
function addrLoad() {
	$.ajax({
		type: "get",
		url: "/api/addr",
		contentType: "application/json; charset=utf-8",
		dataType: "json"
	}).done(res => {
		res.data.forEach(async function(e) {
			
			XY = geocoding(e);
			//console.log(XY);
			//console.log(XY.lat + " ,  " + XY.lng);
			$.ajax({
				type: "put",
				url: "/api/addr",
				data: {
					"lat": XY.lat,
					"lng": XY.lng,
					"addr": XY.addr
				}
			}).done(res => {

			}).fail(error => {
				console.log("오류", error);
			});
		});


	}).fail(error => {
		console.log("오류", error);
	})
};

function changeAddr() {

}

addrLoad();

function geocoding(addr) {
	var XY = new Object();
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
		//console.log(res);
		//console.log(addr);
		a = res.addresses[0].x;
		b = res.addresses[0].y;
		c = addr;
		//console.log(a + "," + b);
		XY.lat = b // 위도
		XY.lng = a // 경도
		XY.addr= c
	}).fail(error => {
		console.log("오류", error);
	});

	return XY;
}


