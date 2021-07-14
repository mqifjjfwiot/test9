<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>Home</title>
	<jsp:include page="../templates/Links.jsp" />
</head>
<style>
	#wrap {
		margin: 100px auto;
		width: 40%;
	}
	button {
		width: 300px;
		height: 300px;
		margin-right: 20px;
	}
</style>
<body>
	<jsp:include page="../templates/mainheader.jsp" />
	<div id="wrap">
		<button type="button" class="btn btn-primary btn-lg btn-block" onclick="location.href='<c:url value="/SignUpPrivate.do"/>'">일반 회원가입</button>
		<button type="button" class="btn btn-primary btn-lg btn-block" onclick="location.href='<c:url value="/SignUpMarket.do"/>'">사업자 회원가입</button>
		<button type="button" class="btn btn-primary btn-lg btn-block" onclick="location.href='<c:url value="/SignUpRider.do"/>'">라이더 회원가입</button>
	</div>
	<jsp:include page="/WEB-INF/views/templates/Side.jsp" />
	<jsp:include page="/WEB-INF/views/templates/mainfooter.jsp" />
</body>
</html>
