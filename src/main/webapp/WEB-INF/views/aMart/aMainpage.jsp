<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>A마트main.jsp</title>
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
     
    hr.line {width:800px;color:black;border-top:thin solid black;}
        	
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

    
<div class="container" style="text-align: center">
  <h2>오늘의 전단</h2>
  <img class="img-responsive center-block" alt="상품 이미지" src="<c:url value="/images/amartmain.jpg"/>">
</div>

<h3></h3><hr class="line"> <!-- 구분선 -->

<div class="container text-center">    
  <h3>금주의 득템 찬스!</h3>
  <br>
  <div class="row">
    <div class="col-sm-3">
      <img style="width:100%"
       class="img-responsive" alt="상품 이미지" src="<c:url value="/images/amartprod1.jpg"/>">
      <p>상품 1</p>
    </div>
    <div class="col-sm-3"> 
      <img style="width:100%"
       class="img-responsive" alt="상품 이미지" src="<c:url value="/images/amartprod2.jpg"/>">
      <p>상품 2</p>    
    </div>
    <div class="col-sm-3"> 
      <img style="width:100%"
       class="img-responsive" alt="상품 이미지" src="<c:url value="/images/amartprod3.jpg"/>">
      <p>상품 3</p>
    </div>
    <div class="col-sm-3"> 
      <img style="width:100%"
       class="img-responsive" alt="상품 이미지" src="<c:url value="/images/amartprod4.jpg"/>">
      <p>상품 4</p>
    </div>  
  </div>
</div><br>

<footer class="container-fluid text-center">
  <p>ⓒ2021 Copyright KOSMO 8기 4팀.</p>
</footer>

</body>
</html>