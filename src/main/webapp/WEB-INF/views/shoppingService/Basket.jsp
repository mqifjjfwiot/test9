<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>내 장바구니</title>

<!-- 내가 담은 장바구니 페이지 -->

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
			<h1>내 장바구니</h1>
		</div>

		<main class="page_cart">
			<ul>
				<li><em>장바구니 상품은 최대 30일간 저장됩니다.</em></li>
				<li>가격, 옵션 등 정보가 변경된 경우 주문이 불가할 수 있습니다.</li>
				<li>오늘출발 상품은 판매자 설정 시점에 따라 오늘출발 여부가 변경될 수 있으니 주문 시 꼭 다시 확인해 주시기	바랍니다.</li>
			</ul>

			<h3 class="blind">장바구니 목록</h3>
			<table class="table">
				<caption>
					<span class="blind">장바구니 내역</span>
				</caption>
				<colgroup>
					<col class="col_1--5TSKjnuT7E">
					<col class="col_2--YKLfiddUoQ">
					<col class="col_3--3kO7FM0QDn">
					<col class="col_4--2HuEbgLS2c">
					<col class="col_5--1Q8JnXqems">
				</colgroup>

				<thead>
					<tr>
						<th scope="col" class="th">
							<div class="checkbox">
								<label for="check_all" class="blind"><input type="checkbox" id="check_all" class="input"	checked="">전체선택</label>
							</div>
						</th>
						<th scope="col-3" class="th" style="text-align:center;">상품정보</th>
						<th scope="col" class="th" style="text-align:center;">옵션</th>
						<th scope="col" class="th" style="text-align:center;">상품금액</th>
						<th scope="col" class="th" style="text-align:center;">배송비</th>
					</tr>
				</thead>
				
				<tbody>
					<tr class="table_row">
					
						<td class="table_cell">
							<div class="checkbox">
									<label	for="bundle_checkbox" class="blind"><input type="checkbox" id="bundle_checkbox"	class="input" checked="">상품 선택</label>
							</div>
						</td>
						
						<td class="table_cell">
							<div	class="product_desc_wrap">
								<div class="product_description">
									<span class="product_thumb">
										<!-- img	src=""	alt="" class="product_img--eMB0AlWn-k"-->
									</span>
										<a href="#"	class="product_info" target="_blank">상품정보(메이커)</a>
										<span	class="product_name"> 상품이름과 설명 이런저런 간단하게 보고 이해할 수 있게</span>
								</div>
							</div>
						</td>
						
						<td class="table_cell">
							<div	class="product_item">
								<div class="product_options">
									<div class="product_item">상품 주문 수량 : n개 (수량 조절하는 기능 추가)</div>
								</div>
							</div>
						</td>
						
						<td class="table_cell">
							<div	class="product_price">
								<em class="product_detail_price">999,999<span class="unit">원</span></em>
							</div>
						</td>
						
						<td rowspan="1" class="table_cell">
							<div class="delivery_fee">
								<span class="delivery_price-">무료</span>
							</div>
						</td>
						
					</tr>
				</tbody>
			</table>
			<div class="product_button_box">
				<div class="area_checkbox">
					<div class="checkbox">
						<label	for="PRODUCT_BUTTON" class="blind"><input type="checkbox" id="PRODUCT_BUTTON"	class="input" checked="">전체선택</label>
					</div>
				</div>
				<button type="button" class="button">선택상품 삭제</button>
			</div>
			
			
			<h3 class="blind">주문금액 정보</h3>
			<div class="order_calculator">
				<div class="product_price_detail">
					<dl class="product_price">
						<dt>총 상품금액</dt>
						<dd>
							<span class="price">999,999</span>원
						</dd>
					</dl>
					
					<dl class="product_price">
						<dt>배송비</dt>
						<dd>
							<span class="price">0</span>원
						</dd>
					</dl>
					
					<dl class="product_price">
						<dt>할인예상금액</dt>
						<dd class="discount">
							<span class="price">8,888</span>원
						</dd>
					</dl>
					
				</div>
				<div class="product_price_total">
					<span class="text_mart">총 주문금액</span>
					<span class="text_point"><span class="price">666,666</span>원</span>
				</div>
			</div>
			
			<div class="cart_button_box">
				<a href="<c:url value="/home.do"/>" class="link_home">쇼핑 계속하기</a>
				<button type="button" class="button">주문하기</button><!-- 결제 api 연동 -->
			</div>
		</main>
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
	<!-- 푸터 끝 --></body>
</html>