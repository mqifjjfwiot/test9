<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<ul>
	<c:if test="${empty sessionScope.id }" var="login">
          	<li><a href="<c:url value="Login.do"/>">로그인</a></li>
	</c:if>
	<c:if test="${not login }">
	<li><a href="<c:url value="Logout.do"/>">로그아웃</a></li>
	<li><a href="<c:url value="Mypage.do"/>">마이페이지</a></li>
	</c:if>
	<li><a href="<c:url value="Category.do"/>">상품보기</a></li>
	<li><a href="<c:url value=""/>">장바구니</a></li>
	<li><a href="<c:url value="List.do"/>">고객센터</a></li>
	<li><a href="<c:url value=""/>">공지사항</a></li>
</ul>