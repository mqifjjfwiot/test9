<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>templates.jsp</title>

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
<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->

<script src="<c:url value="/bootstrap/js/bootstrap.min.js"/>"></script>
</head>
<body>
	<ul class="nav nav-tabs" id="navbox">
		<li class="nav-item"><a class="nav-link active" data-toggle="tab"
			href="#abc">상품 상세보기</a></li>
		<li class="nav-item"><a class="nav-link" data-toggle="tab"
			href="#def">구매후기</a></li>
		<li class="nav-item"><a class="nav-link" data-toggle="tab"
			href="#ghi">상품문의</a></li>
		<li class="nav-item"><a class="nav-link" data-toggle="tab"
			href="#jkl">교환/환불/배송정보</a></li>
	</ul>
	<div class="tab-content">
		<div class="tab-pane fade" id="abc">
		<!-- img alt="상품상세페이지" src="<c:url value="/images/test.jpg"/>" -->
			<p>상품 상세설명 이미지 ${ITEMS.IMAGE}</p>
		</div>
		<div class="tab-pane fade" id="def">
			<p>구매후기 : c:url value=""</p>
		</div>
		<div class="tab-pane fade" id="ghi">
			<p>상품문의 : </p>
		</div>
		<div class="tab-pane show active " id="jkl">
			<p>교환/환불/배송정보 ${ITEMS.IMAGE2}</p>
		</div>
	</div>
</body>
</html>