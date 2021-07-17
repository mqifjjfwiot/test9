<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일반 회원가입</title>
<jsp:include page="../templates/Links.jsp" />
</head>
<!-- daum 도로명주소 찾기 api -->
<style>
	#wrap {
		margin: 0 auto;
		width: 60%;
	}
	#wrap > button {
		width: 300px;
		height: 300px;
		margin-right: 20px;
	}
</style>

<body>
	<!-- 네비게이션 시작 -->
	<jsp:include page="../templates/mainheader.jsp" />
	<!-- 네비게이션 끝 -->

	<div id="wrap">
		<button type="button"  onclick="location.href='<c:url value="/SignUpPrivate.do"/>'">일반 회원가입</button>
		<button type="button"  onclick="location.href='<c:url value="/SignUpMarket.do"/>'">사업자 회원가입</button>
		<button type="button"  onclick="location.href='<c:url value="/SignUpRider.do"/>'">라이더 회원가입</button>
		<button type="button"  onclick="location.href='<c:url value="/SignUpTest.do"/>'">회원가입 테스트</button>
		
	</div>
	<!--  푸터 시작 -->
	<jsp:include page="/WEB-INF/views/templates/Side.jsp" />
	<jsp:include page="/WEB-INF/views/templates/mainfooter.jsp" />
	<!-- 푸터 끝 -->
</body>
</html>