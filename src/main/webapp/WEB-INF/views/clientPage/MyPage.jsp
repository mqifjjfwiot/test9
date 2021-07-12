<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mypage</title>
<style>
* {
	margin: 0;
	padding: 0;
	font-family: Verdana, Geneva, Tahoma, sans-serif;
}

div.allWrap {
	/*background-color: yellow;*/
	width: 80%;
	/*div가운데 배치*/
	margin: 0 auto;
	/* 위 마진이 적용되지 않은 브라우저에는 아래 적용*/
	text-align: center;
}

div.partWrap {
	width: 100%;
	/* 기본 정렬인 left로 다시 설정*/
	text-align: left;
}

.header div.logo {
	/*background-color: red;*/
	width: 15%;
	float: left
}

.header div.logo>img {
	width: 100%;
	height: 60px
}

.header div.topMenu {
	/*background-color: green;*/
	height: 60px;
	float: right;
	line-height: 60px;
}

.header div.topMenu li {
	display: inline;
	border-right: 1px gray solid;
	padding-right: 5px;
}

.header div.topMenu li:last-child {
	border: none;
}

div.section {
	/*background-color: green;*/
	clear: both;
}

div.section div.leftMenu {
	/*background-color: green;*/
	width: 15%;
	float: left
}

div.section div.body {
	/*background-color: red;*/
	width: 85%;
	float: right;
}

div.section div.leftMenu ul {
	list-style-type: none;
	margin: 10px 0 0 10px;
}

div.section div.leftMenu ul li {
	margin-bottom: 5px;
}

div.content {
	padding: 10px 0 0 10px;
}

.footer {
	/* background-color: green;*/
	clear: both;
	height: 60px;
	line-height: 60px;
	text-align: center;
}

.footer address {
	font-style: normal;
	font-weight: bold;
}

a {
	text-decoration: none;
	color: black
}

a:hover {
	text-decoration: underline;
	color: red
}
.allWrap::after {
	content: "";
	clear: both;
	display: block;
}
</style>
</head>
<body>
	<jsp:include page="../templates/mainheader.jsp" />
	<div class="allWrap">
		<div class="partWrap">
			<div class="section">
				<div class="body">
					<div class="content">
								<div class="col-md-9 col-md-offset-3">
									<h3>마이 페이지</h3>
								</div>
							</div>
							<form action="<c:url value="/goMemberEdit.do"/>" method="get">
							<div class="form-group">
									<label for="id">아이디</label> <input type="text"
										class="form-control" value="${sessionScope.id }" disabled="disabled">
								</div>
								<div class="form-group">
									<label for="name">이름</label> <input type="text"
										class="form-control" value="${sessionScope.name }"
										disabled="disabled">
								</div>
								<div class="form-group">
									<label for="tel">전화번호</label> <input type="text"
										class="form-control" value="${sessionScope.tel }"
										disabled="disabled">
								</div>
								<div class="form-group">
									<label for="addr">주소</label> <input type="text" class="form-control" value="${sessionScope.addr }"disabled="disabled">
								</div>
								<div class="form-group">
									<label for="mail">이메일</label> 
									<input type="text" class="form-control" value="${sessionScope.mail }" disabled="disabled">
								</div>
						
								<div class="form-group text-center">
									<button type="submit" class="btn btn-primary">회원정보 수정</button>
								</div>
						</form>
						<jsp:include page="/WEB-INF/views/templates/Side.jsp" />
						<jsp:include page="/WEB-INF/views/templates/mainfooter.jsp" />
					</div>
				</div>
			</div>
		</div>
</body>
</html>