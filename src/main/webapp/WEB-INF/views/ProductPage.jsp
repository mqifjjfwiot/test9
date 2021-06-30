<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>home.jsp</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="../../styles/basic.css">
<style>
ul {
	list-style: none;
	margin: 0;
	padding: 0;
}

li {
	margin: 0 0 0 0;
	padding: 0 0 0 0;
	border: 0;
	float: left;
}
</style>
</head>
<body>

	<div class="container-fluid">
		<%@ include file="templates/mainheader.jsp"%>
		<div class="container">
			<div class="page-header">
				<h2 style="margin-left: 20px">${message }</h2>
			</div>
			<div class="row">
				<!-- 화면분할은 12등분 -->
				<div class="col-xs-10"></div>
				<div>
					<ul>
						<li><a href="<c:url value="#"/>">
								<div style="display: inline-block" class="box">
									<div style="width: 250px; height: 350px">
										<img
											style="width: 230px; height: 230px; margin: 10px; margin-bottom: 5px"
											alt="상품 이미지" src="<c:url value="/images/manager1.jpg"/>">
										<p
											style="font-size: large; color: black; text-align: center; margin-bottom: 3px">상품명1</p>
										<p style="color: gray; text-align: center">[상품] 짧은설명</p>
										<p
											style="font-family: '맑은 고딕'; color: black; text-align: center;">20,000원</p>
									</div>
								</div>
						</a></li>
						<li><a href="<c:url value="#"/>">
								<div style="display: inline-block" class="box">
									<div style="width: 250px; height: 350px">
										<img
											style="width: 230px; height: 230px; margin: 10px; margin-bottom: 5px"
											alt="상품 이미지" src="<c:url value="/images/manager1.jpg"/>">
										<p
											style="font-size: large; color: black; text-align: center; margin-bottom: 3px">상품명2</p>
										<p style="color: gray; text-align: center">[상품] 짧은설명</p>
										<p
											style="font-family: '맑은 고딕'; color: black; text-align: center;">20,000원</p>
									</div>
								</div>
						</a></li>
						<li><a href="<c:url value="#"/>">
								<div style="display: inline-block" class="box">
									<div style="width: 250px; height: 350px">
										<img
											style="width: 230px; height: 230px; margin: 10px; margin-bottom: 5px"
											alt="상품 이미지" src="<c:url value="/images/manager1.jpg"/>">
										<p
											style="font-size: large; color: black; text-align: center; margin-bottom: 3px">상품명3</p>
										<p style="color: gray; text-align: center">[상품] 짧은설명</p>
										<p
											style="font-family: '맑은 고딕'; color: black; text-align: center;">20,000원</p>
									</div>
								</div>
						</a></li>
						<li><a href="<c:url value="#"/>">
								<div style="display: inline-block" class="box">
									<div style="width: 250px; height: 350px">
										<img
											style="width: 230px; height: 230px; margin: 10px; margin-bottom: 5px"
											alt="상품 이미지" src="<c:url value="/images/manager1.jpg"/>">
										<p
											style="font-size: large; color: black; text-align: center; margin-bottom: 3px">상품명</p>
										<p style="color: gray; text-align: center">[상품] 짧은설명</p>
										<p
											style="font-family: '맑은 고딕'; color: black; text-align: center;">20,000원</p>
									</div>
								</div>
						</a></li>
						<li><a href="<c:url value="#"/>">
								<div style="display: inline-block" class="box">
									<div style="width: 250px; height: 350px">
										<img
											style="width: 230px; height: 230px; margin: 10px; margin-bottom: 5px"
											alt="상품 이미지" src="<c:url value="/images/manager1.jpg"/>">
										<p
											style="font-size: large; color: black; text-align: center; margin-bottom: 3px">상품명</p>
										<p style="color: gray; text-align: center">[상품] 짧은설명</p>
										<p
											style="font-family: '맑은 고딕'; color: black; text-align: center;">20,000원</p>
									</div>
								</div>
						</a></li>
						<li><a href="<c:url value="#"/>">
								<div style="display: inline-block" class="box">
									<div style="width: 250px; height: 350px">
										<img
											style="width: 230px; height: 230px; margin: 10px; margin-bottom: 5px"
											alt="상품 이미지" src="<c:url value="/images/manager1.jpg"/>">
										<p
											style="font-size: large; color: black; text-align: center; margin-bottom: 3px">상품명</p>
										<p style="color: gray; text-align: center">[상품] 짧은설명</p>
										<p
											style="font-family: '맑은 고딕'; color: black; text-align: center;">20,000원</p>
									</div>
								</div>
						</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="/WEB-INF/views/templates/Side.jsp" />
	<jsp:include page="/WEB-INF/views/templates/mainfooter.jsp" />
</body>
</html>
