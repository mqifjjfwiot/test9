<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>PaymentList.jsp</title>

<!-- 주문조회 리스트. 주문 번호 클릭으로 상세정보(PaymentRecord)로 연결 -->

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

</head>
<body>
	<!-- 네비게이션 시작 -->
	<jsp:include page="../templates/mainheader.jsp" />
	<!-- 네비게이션 끝 -->
	<!-- 실제 내용 시작 -->
	<div class="container">
		<div class="page-header">
			<h1>결제완료페이지</h1>
		</div>

		<main class="page_cart">
			<ul>
				<li><em>주문하신 상품을 나열한 페이지입니다.</em></li>
				<li>환불여부는 환불규정에 따라 환불</li>
			</ul>


			<table class="table">

				<colgroup>
					<col class="col_2--YKLfiddUoQ">
					<col class="col_3--3kO7FM0QDn">
					<col class="col_4--2HuEbgLS2c">
					<col class="col_5--1Q8JnXqems">
				</colgroup>

				<thead>
					<tr>
						<th scope="col-3" class="th" style="text-align: center;">상품정보</th>
						<th scope="col" class="th" style="text-align: center;">상품금액</th>
						<th scope="col" class="th" style="text-align: center;">배송비</th>
					</tr>
				</thead>
					<c:set var = "sum" value = "0" />
					<c:if test="${empty lists }" var="isEmpty">
					</c:if>
					
					<c:if test="${not isEmpty }">
					<c:forEach items="${lists}" var="item"	varStatus="loop">
					<!-- 예시상품 1 -->
					<tr class="table_row">

						<td class="table_cell">
							<div class="product_desc_wrap">
								<div class="product_description">
									<span class="product_thumb"> <!-- img	src=""	alt="" class="product_img--eMB0AlWn-k"-->
									</span> 
									<a href="#" class="product_info" target="_blank">	${item.iname } //<span class="product_name">  ${item.iname2 } ( ${item.category } )</span></a>
								</div>
							</div>
						</td>

						<td class="table_cell">
							<div class="product_price">
									<c:if test="${empty lists }" var="isEmpty">
										<tr>
											<em class="product_detail_price">0<span
												class="unit">원</span></em>
										</tr>
									</c:if>
									<c:if test="${not isEmpty }">
									<em class="product_detail_price">${item.price }<span class="unit">원</span></em>
									</c:if>
							</div>
						</td>

						<td rowspan="1" class="table_cell">
							<div class="delivery_fee">
								<span class="delivery_price-">무료</span>
							</div>
						</td>

					</tr>
					
					<c:set var= "sum" value="${sum + item.price}"/>
					
					
					</c:forEach>
					
					
					</c:if>
				</tbody>
			</table>
	</div>
	<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->

	<script src="<c:url value="/bootstrap/js/bootstrap.min.js"/>"></script>
	
	<!-- 실제 내용 끝 -->
	<!--  푸터 시작 -->
	<jsp:include page="/WEB-INF/views/templates/Side.jsp" />
	<jsp:include page="/WEB-INF/views/templates/mainfooter.jsp" />
	<!-- 푸터 끝 -->
</body>
</html>