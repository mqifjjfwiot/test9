<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
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


<div class="textarea">
<table>
<tr>
<td>A마트<br></td>
</tr>
<tr>
<td rowspan="1" colspan="3" style="vertical-align: top; width: 30%;">
<textarea rows="8" cols="85">!!</textarea>
</td>
</tr>
</table>
</div>

<footer class="container-fluid text-center">
  <p>ⓒ2021 Copyright KOSMO 8기 4팀.</p>
</footer>

</body>
</html>