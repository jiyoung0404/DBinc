<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Map | U&I</title>
	<%@ include file="header/header_head.jsp" %>	<%--  자주 나오는 헤더 중 헤드 부분을 포함시켜줍니다. --%>
<body>
	<%@ include file="header/header_body.jsp" %>	<%-- 자주 나오는 헤더중 바디 부분을 포함시켜줍니다. --%>
	
	<div id="map" style="width:1200px;height:600px; margin:0 auto;">
	
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8e3eb82c47c88fab14620e765dae7e97"></script>
		
		<script>    
		
			var mapContainer = document.getElementById('map');
			var mapOptions = {
				center: new daum.maps.LatLng(37.5092914, 127.0576525999998),
				level: 3
			};
			
			var map = new daum.maps.Map(mapContainer, mapOptions);		
			
			var imageSrc = 'images/home_marker.png', // 마커이미지의 주소입니다    
		    imageSize = new daum.maps.Size(90, 90), // 마커이미지의 크기입니다
		    imageOption = {offset: new daum.maps.Point(42, 80)};
			
			var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize, imageOption),
		    markerPosition = new daum.maps.LatLng(37.5092914, 127.0576525999998); // 마커가 표시될 위치입니다
	
		    var marker = new daum.maps.Marker({
		        position: markerPosition, 
		        image: markerImage // 마커이미지 설정 
		    });
			
			marker.setMap(map); 
		</script>
	</div>
</body>
</html>