<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>FindMarket.jsp</title>

<!-- 페이지 설명은 여기에 -->

<!-- 부트스트랩 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="<c:url value="/styles/common.css"/>">
<link href="<c:url value="/bootstrap/css/bootstrap.min.css"/>"
	rel="stylesheet">
<!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
<!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=96ae258013acf305ddfa3db9d504c4a9&libraries=services"></script>

</head>
<body>
	<!-- 네비게이션 시작 -->
	<jsp:include page="../templates/mainheader.jsp" />
	<!-- 네비게이션 끝 -->
	<!-- 실제 내용 시작 -->
	<div class="container">
		<div class="page-header">
			<h1>주변 마트찾기</h1>
		</div>
		<div>
			<div>
	            <input id='address' type='text' />
	            <button onclick='searchByAddress()'>마트검색</button>
        	</div>
        	
			<div id="map" style="width:500px;height:400px;"></div>
		</div>

		
		
	</div>
	<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->

	<script src="<c:url value="/bootstrap/js/bootstrap.min.js"/>"></script>
	
	<!-- 실제 내용 끝 -->
	<!--  푸터 시작 -->
	<jsp:include page="/WEB-INF/views/templates/Side.jsp" />
	<jsp:include page="/WEB-INF/views/templates/mainfooter.jsp" />
	<!-- 푸터 끝 -->
	
	
	
	<script>
	
	var map;
    //나의 현재 위치의 위도와 경도 얻기
    if(navigator.geolocation){//브라우저의 Geolocation 지원 여부 판단           
            //PositionOptions객체 설정용]
            var options = {timeout:3000,maxinumAge:5000};
            //현재 위치 정보 딱 한번만 얻기
            navigator.geolocation.getCurrentPosition(successCallback);
    }
    //위치 정보를 얻었을때 자동으로 호출되는 콜백 함수:인자는 Position객체
    function successCallback(position){
        //위도/경도 얻기]
        var lat=position.coords.latitude;
        var lng =position.coords.longitude;   
        //div에 지도 표시하기
        displayKakaoMap(lat,lng);  
          
    }

    

    //지도 표시 함수]
    function displayKakaoMap(lat,lng){
        var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
        mapOption = { 
            center: new kakao.maps.LatLng(lat,lng), // 지도의 중심좌표
            level: 5 // 지도의 확대 레벨
        };

        // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
        map = new kakao.maps.Map(mapContainer, mapOption);
        //지도에 마커 표시하기
        setMarker(lat,lng,"<div style='padding:5px'>나의 위치</div>");
    }////////////////displayKakaoMap
    //마커 표시하는 함수]
    var setMarker=function(lat,lng,content){  

      
        // 마커를 생성합니다
        var marker = new kakao.maps.Marker({
            position: new kakao.maps.LatLng(lat, lng),// 마커가 표시될 위치
            
            clickable: true 
        });
        // 마커가 지도 위에 표시되도록 설정합니다
        marker.setMap(map);
        // 마커가 드래그 가능하도록 설정합니다 
        //marker.setDraggable(true); 
        //마커에 클릭 이벤트 등록하기
        setMarkerClick(marker,content);

    };
    //// 마커에 클릭 이벤트 등록 함수
    function setMarkerClick(marker,content){
        // 인포윈도우를 생성합니다
        var infowindow = new kakao.maps.InfoWindow({
            content : content,
            removable : true
        });

        // 마커에 클릭이벤트를 등록합니다
        kakao.maps.event.addListener(marker, 'click', function() {
            // 마커 위에 인포윈도우를 표시합니다
            infowindow.open(map, marker);  
        });
    }////////////////setMarkerClick
     //개발자센터에서 "주소로 장소 표시하기" 로 검색
    

  
     
     
     

     var ps = new kakao.maps.services.Places();
   
         
    //ps.keywordSearch('마트', placesSearchCB,options); 
    ps.keywordSearch('마트', placesSearchCB); 
    
 // 지도에 마커를 표시하는 함수입니다
    function displayMarker(place) {
        
        // 마커를 생성하고 지도에 표시합니다
        var marker1 = new kakao.maps.Marker({
            map: map,
            position: new kakao.maps.LatLng(place.y, place.x) 
        });

        // 마커를 클릭했을 때 마커 위에 표시할 인포윈도우를 생성합니다
        var iwContent = '<div style="padding:5px;">Hello World!</div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
        iwRemoveable = true;
        // 인포윈도우를 생성합니다
        var infowindow1 = new kakao.maps.InfoWindow({
        content : iwContent,
        removable : iwRemoveable
        }); 


        // 마커에 클릭이벤트를 등록합니다
        kakao.maps.event.addListener(marker1, 'click', function() {
            // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
            infowindow1.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>'
            +'<div style="padding:5px;font-size:12px;">'+place.phone+'</div>'+
            '<div style="padding:5px;font-size:12px;">'+'도로명주소:' +place.road_address_name+'</div>'
            +'<a href='+place.place_url+'>'+'<div style="padding:5px;font-size:12px;width:fit-content;margin: 0;">'+'링크로 이동'+'</div>'+'</a>'
            );
            infowindow1.open(map, marker1);
        });
    }

</script>
	
</body>
</html>