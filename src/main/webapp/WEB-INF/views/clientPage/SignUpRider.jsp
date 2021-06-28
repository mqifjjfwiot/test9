<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>라이더 회원가입</title>
</head>
<body>
	<!-- 네비게이션 시작 -->
	<jsp:include page="../templates/mainheader.jsp" />
	<!-- 네비게이션 끝 -->
	
	<article class="container">
		<div class="page-header"> 
			<div class="col-md-6 col-md-offset-3"> 
			<h3>회원가입</h3> 
			</div> 
	</div>

	<form action="<c:url value="/join"/>" method="post">
		
		 <div class="form-group"> 
		 <label for="id">아이디</label> 
		 <input type="text" class="form-control" id="Rider_id" name="Rider_id" placeholder="ID"> 
		 <div class="eheck_font" id="id_check"></div> 
		 </div>

		<div class="form-group"> 
		<label for="pw">비밀번호</label>
		<input type="password" class="form-control" id="Rider_pw" name="Rider_pw" placeholder="PASSWORD"> 
		<div class="eheck_font" id="pw_check">
		</div> 
		
		</div> <div class="form-group"> 
		<label for="pw2">비밀번호 확인</label> 
		<input type="password" class="form-control" id="Rider_pw2" name="Rider_pw2" placeholder="Confirm Password"> 
		<div class="eheck_font" id="pw2_check"></div> 
		</div>

		<div class="form-group"> 
		<label for="Rider_name">이름</label> 
		<input type="text" class="form-control" id="Rider_name" name="Rider_name" placeholder="name"> 
		<div class="eheck_font" id="name_check"></div> 
		</div>
		
		<div class="form-group"> 
		<label for="Rider_gender">성별 </label> 
		<input type="checkbox" id="Rider_gender" name="Rider_gender" value="남">남 
		<input type="checkbox" id="Rider_gender" name="Rider_gender" value="여">여 
		</div>
		
		<div class="form-group"> 
		<label for="Rider_phone">휴대폰 번호('-'없이 번호만 입력해주세요)</label> 
		<input type="tel" class="form-control" id="Rider_phone" name="Rider_phone" placeholder="Phone Number"> 
		<div class="eheck_font" id="phone_check"></div> 
		</div>
		
		<div class="form-group"> 
		<label for="Rider_email">이메일 주소</label> 
		<input type="email" class="form-control" id="Rider_mail" name="Rider_mail" placeholder="E-mail">
		 <div class="eheck_font" id="email_check"></div> 
		 </div>

		<div class="form-group"> 
		<label for="Rider_addr">주소</label> 
		<input class="form-control" style="width: 40%; display: inline;" placeholder="우편번호" name="Rider_oaddress" id="Rider_oaddress" type="text" readonly="readonly" > 
		<button type="button" class="btn btn-default" onclick="execPostCode();"><i class="fa fa-search"></i> 우편번호 찾기</button> 
		</div>
		
		<div class="form-group"> 
		<input class="form-control" style="top: 5px;" placeholder="도로명 주소" name="Rider_address" id="mem_address" type="text" readonly="readonly" /> </div>

		<div class="form-group"> 
		<input class="form-control" placeholder="상세주소" name="Rider_detailaddress" id="Rider_detailaddress" type="text" /> </div>


		<div class="form-group text-center"> 
		<button type="submit" class="btn btn-primary">회원가입</button> 
		</div>


	</form>
	<!--  푸터 시작 -->
	<jsp:include page="/WEB-INF/views/templates/Side.jsp" />
	<jsp:include page="/WEB-INF/views/templates/mainfooter.jsp" />
	<!-- 푸터 끝 -->
</body>
</html>