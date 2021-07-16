<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>templates.jsp</title>

<!-- 페이지 설명은 여기에 -->

<!-- 부트스트랩 -->
<jsp:include page="../templates/Links.jsp" />
<!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
<!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script>
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->

<script src="<c:url value="/bootstrap/js/bootstrap.min.js"/>"></script>
<script>
$(function(){
	
	$('#amount-').click(function(){
		amount = parseInt($('#amount').html())
				if (amount > 1) {
					$('#amount').html(amount-1);
				}
	})
	$('#amount+').click(function(){
		amount = parseInt($('#amount').html())
				$('#amount').html(amount+1);
	})
});
</script>
<style>
#picture {
	width: 400px;
	height: 400px;
	margin-bottom: 100px;
}

table {
	font-size: 17px;
	color: gray;
	font-family: sans-serif;
	width: 70%;
}

td {
	padding: 20px;
}

tr.space {
	border-bottom: 10px solid #fff;
}

#pro {
	color: red;
	font-size: 20px;
	border-bottom: 1px solid #fff;
}

#proname {
	font-size: 40px;
	color: black;
}

#abutton {
	font-size: 30px;
	padding: 5px 5px;
	margin-top: 5px;
	width: 100%;
}

#navbox {
	font-size: 20px;
	color: black;
}

#price {
	font-size: 25px;
	padding-left: 10px;
}

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
	<!-- 네비게이션 시작 -->
	<jsp:include page="/WEB-INF/views/templates/mainheader.jsp" />
	<!-- 네비게이션 끝 -->
	<!-- 실제 내용 시작 -->
	<div class="container">
		<div class="page-header">
			<h1><a href="<c:url value="/Item/Accordian.do"/>">상품 상세페이지</a></h1>
		</div>
		<div class="row">
			<div class="col-md-5">
				<img id="picture" alt="상품이미지"
					src="<c:url value='/images/manager1.jpg'/>">
			</div>
			<div class="col-md-6">
				<table>
					<thead>
						<tr colspan="2" id="pro" class="space">
							<td><b>상품 홍보글</b></td>
						</tr>
						<tr colspan="2" id="proname" class="space">
							<th>상품명</th>
					</thead>
					<tbody>
						<tr class="space">
							<td>판매가</td>
							<td>{판매가}</td>
						</tr>
						<tr class="space">
							<td>적립금</td>
							<td>{적립금}</td>
						</tr>
						<tr class="space">
							<td>원산지</td>
							<td>{원산지}</td>
						</tr>
						<tr class="space">
							<td>제조사/브랜드</td>
							<td>{제조사/브랜드}</td>
						</tr>
						<tr class="space">
							<td>배송비</td>
							<td>{배송비}</td>
						</tr>
						<tr class="space">
							<td>상품 선택</td>
							<td><fieldset>
									<select name="speed" id="speed">
										<option selected="selected">옵션을 선택해주세요.</option>
										<option>옵션1</option>
										<option>옵션2</option>
										<option>옵션3</option>
										<option>옵션4</option>
									</select></td>
						</tr>
						<!-- tr class="space">
							<td>총 상품금액</td>
							<td>####원</td>
						</tr>
						<tr class="space">
							<td><button onclick="<c:url value='#'/>">장바구니</button></td>
							<td><button onclick="<c:url value='#'/>">구매하기</button></td>
						</tr-->
					</tbody>
				</table>
				<hr>
				<p>수량 : 
        		<button id="amount-">-</button>
        		<span id="amount">1</span>
				<button id="amount+">+</button>
					
				</p>
				<p>금액 : <span id="price">20000</span>원</p>
				<div id="abutton">
					<button value="장바구니" class="btn btn-default btn-lg"
						onclick="<c:url value="#"/>">장바구니</button>
					<button value="구매하기" class="btn btn-default btn-lg"
						onclick="<c:url value="#"/>">구매하기</button>

				</div>
			</div>
		</div>
		<ul class="nav nav-tabs" id="navbox">
			<li class="nav-item"><a class="nav-link active"
				data-toggle="tab" href="#jkl">상품 상세보기</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#abc">구매후기</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#def">상품문의</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#ghi">교환/환불/배송정보</a></li>
		</ul>
		<div class="tab-content">
			<div class="tab-pane show active " id="jkl">
				<img alt="상품상세페이지" src="<c:url value="/images/test.jpg"/>">
			</div>
			<div class="tab-pane fade" id="abc">
				<p>Nunc vitae turpis id nibh sodales commodo et non augue. Proin
					fringilla ex nunc. Integer tincidunt risus ut facilisis tristique.</p>
			</div>
			<div class="tab-pane fade" id="def">
				<p>Curabitur dignissim quis nunc vitae laoreet. Etiam ut mattis
					leo, vel fermentum tellus. Sed sagittis rhoncus venenatis. Quisque
					commodo consectetur faucibus. Aenean eget ultricies justo.</p>
			</div>
			<div class="tab-pane fade" id="ghi">
				<p>Curabitur dignissim quis nunc vitae laoreet. Etiam ut mattis
					leo, vel fermentum tellus. Sed sagittis rhoncus venenatis. Quisque
					commodo consectetur faucibus. Aenean eget ultricies justo.</p>
			</div>
		</div>
		<!-- 버튼 색상 변경 및 장바구니 구매결정 버튼 생성 -->
	</div>

	<!-- 실제 내용 끝 -->
	<!--  푸터 시작 -->
	<jsp:include page="/WEB-INF/views/templates/Side.jsp" />
	<jsp:include page="/WEB-INF/views/templates/mainfooter.jsp" />
	<!-- 푸터 끝 -->
</body>
</html>