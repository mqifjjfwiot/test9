<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=96ae258013acf305ddfa3db9d504c4a9&libraries=services"></script>
<title>A마트info.jsp</title>
<!-- 페이지 설명은 여기에 -->

<!-- 부트스트랩, 제이쿼리 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link href="<c:url value="/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
  
<!--------- 스타일 ----------->
<style>
	hr.top_border {
			width:900px;
            border-top: 4px double rgb(57, 169, 203);
            /*border:박스형/border-top:실선 solid:한줄,double:두줄 */
        }
        
	div.title {
            font-size: 200%;
            font-weight: bold;
            text-align: center;
            color: rgb(35, 35, 35);
        }
    div.store-info {
    		text-align: left;
    		padding-left: 100px;
    
    	}
    hr.line { width:800px;color:black;border-top:thin solid black;}
        	
	.navbar .navbar-nav {
  	display: inline-block;
  	float: none;
  	vertical-align: bottom;
	}

 	.navbar .navbar-collapse{
  	text-align: center;
  	font-size: 130%;
  	padding-left: 90px;
	}
	
	footer {
    background-color: #E4EFE7;
    padding: 25px;
    font-size: 150%;
    }
	
	.store-box {
    padding: 60px 20px 45px;
	}
	
	.store-box ul li{
    float: left;
    width: 15%;
    font-size: 16px;
    text-align: center;
    list-style-type: none;
    display:inline;
  	margin-left: auto;
  	margin-right: auto;
	}
	.textarea {
	vertical-align: middle;
	padding-left: 100px;
	}
</style>
</head>
<body>
<h3></h3><hr class="top_border">
<!-- top menu -->
<div class="title">
        <p>A마트</p>
    </div>
    
<div class="top_bottom">
<nav class="navbar navbar-default" style="background-color: #ffffff;">
  <div class="container-fluid">
  	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    <ul class="nav navbar-nav">
      
      <li class="nav-item"><a href="#">인기상품</a></li>
      <li class="nav-item"><a href="#">행사상품</a></li>
      <li class="nav-item"><a href="<c:url value="/home.do"/>">KosmoMart</a></li>
      <li class="nav-item"><a href="<c:url value="/aMartInfo.do"/>">고객센터</a></li>
      <li class="nav-item"><a href="#">공지사항</a></li>
    </ul>
  </div>
  </div>
</nav>
</div>    
<!-------------->

<div class="store-info">
<h2>A마트 KOSMO점</h2>
</div>
<div class="store-box">
<ul>
<li>
<img src="http://stimg.emart.com/store/images/new/sef/ico_time.png" alt="">
<strong>쇼핑시간</strong>	
<p>10:00~22:00</p>
</li>
<li>
<img src="http://stimg.emart.com/store/images/new/sef/ico_calender.png" alt="">
<strong>휴점일</strong>  
<p>07. 25. (일)</p>
</li>
<li>
<img src="http://stimg.emart.com/store/images/new/sef/ico_phone.png" alt="">
<strong>고객센터</strong>
<p>02-123-4567</p>
</li>
<li>
<img src="http://stimg.emart.com/store/images/new/sef/ico_parking.png" alt="">
<strong>주차시설</strong>
<p>총 100대</p>
</li>
</ul>
</div>    

<div class="container">
		
		<div>
			<div id="map" style="width:600px;height:400px;"></div>
		</div>

		</div>


<footer class="container-fluid text-center">
  <p>ⓒ2021 Copyright KOSMO 8기 4팀.</p>
</footer>



<script >


var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = { 
    center: new kakao.maps.LatLng(37.478269107380015, 126.87287230052132), // 지도의 중심좌표
    level: 5 // 지도의 확대 레벨
};

var map = new kakao.maps.Map(mapContainer, mapOption);



// 마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(37.47718702461307, 126.87302931178806); 
//마커 표시하는 함수]
    var marker = new kakao.maps.Marker({
    	position: new kakao.maps.LatLng(37.47718702461307, 126.87302931178806),// 마커가 표시될 위치
        clickable: true 
    });
    // 마커가 지도 위에 표시되도록 설정합니다
    marker.setMap(map);

    var iwContent = ('<div style="padding:5px;font-size:12px;">' +'A마트 (kosmo점)' + '</div>'
    +'<div style="padding:5px;font-size:12px;">'+'01.234.5678'+'</div>'+
    '<div style="padding:5px;font-size:12px;">'+'경기도 광명시 철산동 번지 주공  449-2, A마트'+'</div>'
    ),
    iwPosition = new kakao.maps.LatLng(37.47718702461307, 126.87302931178806);


    var infowindow = new kakao.maps.InfoWindow({
    	content : iwContent,
        removable : iwPosition
    });

        // 마커 위에 인포윈도우를 표시합니다
        infowindow.open(map, marker);  



</script>
</body>
</html>