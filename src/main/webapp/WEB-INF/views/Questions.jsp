<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>고객센터</title>

<!-- 고객센터 헤더에서 이동. QA와 문의게시판으로 연결 -->


<!-- 제이쿼리 UI용 CSS -->
<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<!-- 부트스트랩 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- jQuery사용을 위한 라이브러리 임베딩-->
<!-- 1]다운받은  .js파일 임베디드 -->
<!--  
<script src="<c:url value="/js/jquery-3.6.0.min.js"/>"></script>
-->
<!-- 2]CDN(Content Deliver Network)주소 사용 -->
<!-- 제이쿼리 코어용 라이브러리 임베드 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- 제이쿼리 UI용 라이브러리 임베드 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<style>
img {
	margin: 50px;
	display: inline-block;
	width: 350px;
	height: 350px;
	border: 2px solid black;
	text-align: center;
	vertical-align: middle;
	cursor: pointer;
}

</style>
</head>
<body>
	<jsp:include page="templates/mainheader.jsp" />
	<div class="row">
		<div class="col-md-offset-1 col-md-7">
			<div class="container">
				<div class="page-header">
					<h1>고객센터</h1>
				</div>
				<fieldset>
				 	<a href="<c:url value='/Customer.do'/>"><img alt="자주 물어보는 질문" src="<c:url value="/images/manager1.jpg"/>"/></a>
					<!-- div class="box1" onclick="location.href='<c:url value='/Manager/Customer.do'/>'">
						<img alt="자주 물어보는 질문" src="<c:url value="/images/manage1.png"/>">
					</div-->
					<a href="<c:url value='#'/>"><img alt="고객 문의 게시판" src="<c:url value="/images/manager2.jpg"/>"/></a>
					<!-- div class="box2" onclick="location.href='<c:url value='#'/>'">고객 문의 게시판</div-->
				</fieldset>
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/templates/Side.jsp" />
	<jsp:include page="/WEB-INF/views/templates/mainfooter.jsp" />
</body>
</html>