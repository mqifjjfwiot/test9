<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">


<title>결제하기</title>

<!-- 페이지 설명은 여기에 -->

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
			<h1>결제정보확인</h1>
		</div>

		<div class="row">
			<div class="col-md-12">
				<%-- <form class="form-horizontal" method="post" action="<c:url value='/PaymentRecord.do'/>" > --%>
				<form class="form-horizontal">
					<div class="form-group">

						<p class="col-md-offset-1">님의 배송정보</p>
						</br> <label class="col-sm-1 control-label"> 이름</label>
						<div class="col-sm-5">
							<input type="text" class="form-control" name="name" value="">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-1 control-label">주소</label>
						<div class="col-sm-5">
							<input type="text" class="form-control" name="name" value="">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-1 control-label">연락처</label>
						<div class="col-sm-5">
							<input type="text" class="form-control" name="name"
								placeholder="">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-1 control-label">이메일</label>
						<div class="col-sm-5">
							<input type="text" class="form-control" name="name"
								placeholder="">
						</div>
					</div>
				</form>

				<button class="btn_payment" onclick="payment()">결제</button>
				<a href="<c:url value="/PaymentRecord.do"/>">결제 (결제api생략)</a>
			</div>
		</div>
	</div>
	<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script type="text/javascript"
		src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	<script src="<c:url value="/bootstrap/js/bootstrap.min.js"/>"></script>

	<!-- 실제 내용 끝 -->
	<!--  푸터 시작 -->
	<jsp:include page="/WEB-INF/views/templates/Side.jsp" />
	<jsp:include page="/WEB-INF/views/templates/mainfooter.jsp" />
	<!-- 푸터 끝 -->

	<script>
		//var btn = document.getElementById("form-horizontal");
		//btn.addEventListener("click", payment);

		function payment() {

			var IMP = window.IMP; // 생략해도 괜찮습니다.
			IMP.init("imp57923173"); // 체험판 관리자

			IMP.request_pay({

				pg : "html5_inicis", // 결제방식
				pay_method : "card", // 결제 수단
				merchant_uid : 'merchant_' + new Date().getTime(),
				name : "노르웨이 회전 의자", // order 테이블에 들어갈 주문명 혹은 주문 번호
				amount : 100, // 결제 금액
				buyer_email : "gildong@gmail.com", // 구매자 email
				buyer_name : "홍길동", // 구매자 이름
				buyer_tel : "010-4242-4242", // 구매자 전화번호
				buyer_addr : "서울특별시 강남구 신사동", // 구매자 주소
				buyer_postcode : "01181", // 구매자 우편번호
			//m_redirect_url :"/PaymentRecord.do" // 결제 완료 후 보낼 컨트롤러의 메소드명

			}, function(rsp) { //callback

				if (rsp.success) { // 결제 성공 시: 결제 승인 또는 가상계좌 발급에 성공한 경우
					// jQuery로 HTTP 요청
					jQuery.ajax({
						url : "http://localhost:9090/app/PaymentRecord.do", // 가맹점 서버
						method : "POST",
						headers : {
							"Content-Type" : "application/json"
						},
						data : {
							imp_uid : rsp.imp_uid,
							merchant_uid : rsp.merchant_uid
						}
					}).done(function(data) {
						// 가맹점 서버 결제 API 성공시 로직
						//location.href = "<c:url value="/mailSender.do"/>"
						location.href = "<c:url value="/PaymentRecord.do"/>"
						
					})

				} else { // 실패시
					alert("결제에 실패하였습니다. 에러 내용: " + rsp.error_msg);
				}

			});
		}
	</script>

</body>
</html>