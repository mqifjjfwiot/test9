<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일반 회원가입</title>
</head>
<body>
	<!-- 네비게이션 시작 -->
	<jsp:include page="../templates/mainheader.jsp" />
	<!-- 네비게이션 끝 -->
	<h2>일반 회원가입</h2>
	${message }
	<form id="myform" class="form-horizontal" method="post" action="<c:url value="/join.do"/>">
				<div class="form-group">					
					<label class="col-md-2 control-label" for="id">아이디</label>
					<input type="button" value="중복확인" >
					<div class="col-md-4">
						<input type="text" class="form-control" name="id" placeholder="아이디를 입력하세요?" value="">
					</div>
				</div>
				<div class="form-group">					
					<label class="col-sm-2 control-label" for="pwd">비밀번호</label>
					<span style="color: red;">${different }</span>
					<div class="col-sm-4">
						<input type="password" class="form-control" name="pwd" placeholder="비밀번호 입력하세요?">
					</div>
				</div>
				<div class="form-group">					
					<label class="col-sm-2 control-label" for="pwdCheck">비밀번호 재입력</label>
					<div class="col-sm-4">
						<input type="password" class="form-control" name="pwdCheck" placeholder="비밀번호 입력하세요?">
					</div>
				</div>
				
				<div class="form-group">					
					<label class="col-sm-2 control-label" for="name">이름</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" name="name" placeholder="이름을 입력하세요?" value="">
					</div>
				</div>
				<div class="form-group">					
					<label class="col-sm-2 control-label" for="tel">전화번호</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" name="tel" placeholder="-를 뺀 번호만입력하세요" value="">
					</div>
				</div>
				

				<div class="form-group">					
					<label class="col-sm-2 control-label" for="addr">주소</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" name="addr" placeholder="주소를 입력하세요?" value="">
					</div>
				</div>
				<div class="form-group">					
					<label class="col-sm-2 control-label" for="mail">이메일</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" name="mail" value="">@
						<select name="mailEnd">
							<option>naver.com</option>
							<option>daum.net</option>
							<option>nate.com</option>
						</select>
					</div>
				</div>
		
		
		
		<input type="submit" value="회원가입"/>
	</form>
	<!--  푸터 시작 -->
	<jsp:include page="/WEB-INF/views/templates/Side.jsp" />
	<jsp:include page="/WEB-INF/views/templates/mainfooter.jsp" />
	<!-- 푸터 끝 -->
</body>
</html>