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
	div.top_border {
            padding-right: 10px;
            padding-left: 10px;
            border-top: 4px double rgb(57, 169, 203);
            /*border:박스형/border-top:실선 solid:한줄,double:두줄 */
        }
        
	div.top_header {
            font-size: 12px;
        }
        
	div.title {
            font-size: 200%;
            font-weight: bold;
            text-align: center;
            color: rgb(35, 35, 35);
        }
        	
	.navbar .navbar-nav {
  	display: inline-block;
  	float: none;
  	vertical-align: bottom;
	}

 	.navbar .navbar-collapse{
  	text-align: center;
  	font-size: 130%;
  	padding-left: 200px;
	}
	
</style>
</head>
<body>
	<div class="top_border">
    </div>
<!-- top menu -->
<div class="top_header">
<nav class="navbar navbar-default" style="background-color: #ffffff;">
  <div class="container-fluid">
    <div>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">로그인</a></li>
        <li><a href="#">회원가입</a></li>
        <li><a href="#">고객센터</a></li>
      </ul>
    </div>
  </div>
</nav>
</div>

<div class="title">
        <p>A마트</p>
    </div>

<div class="top_bottom">
<nav class="navbar navbar-default" style="background-color: #ffffff;">
  <div class="container-fluid">
  	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    <ul class="nav navbar-nav">
      
      <li class="nav-item"><a href="#">신상품</a></li>
      <li class="nav-item"><a href="#">행사상품</a></li>
      <li class="nav-item"><a href="#">신선식품</a></li>
      <li class="nav-item"><a href="#">밀키트,반조리</a></li>
      <li class="nav-item"><a href="#">음료/차</a></li>
    </ul>
  
    <form class="navbar-form navbar-right" action="#">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="검색어를 입력하세요" name="search">
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
            <i class="glyphicon glyphicon-search"></i>
          </button>
        </div>
      </div>
    </form>
  </div>
  </div>
</nav>
</div>




</body>
</html>