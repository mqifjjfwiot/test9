<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

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
			<form class="form-horizontal" method="post" action="<c:url value='/PaymentRecord.do'/>">
				<div class="form-group">
				
				<p class="col-md-offset-1">${sessionScope.id}님의 배송정보</p> </br>
					<label class="col-sm-1 control-label">이름</label>
					<div class="col-sm-5">
						<input type="text" class="form-control" name="name"
							value="${member.name}">
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-sm-1 control-label">주소</label>
					<div class="col-sm-5">
						<input type="text" class="form-control" name="name"
							value="${member.addr}">
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-sm-1 control-label">연락처</label>
					<div class="col-sm-5">
						<input type="text" class="form-control" name="name"
							placeholder="${member.tel }">
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-sm-1 control-label">이메일</label>
					<div class="col-sm-5">
						<input type="text" class="form-control" name="name"
							placeholder="${member.mail }">
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-sm-1 control-label">가격</label>
					<div class="col-sm-5">
							<span class="text_point"><span class="price">666,666</span>원</span>
							<button type="submit" class="btn_payment">결제</button>
					</div>
				</div>
				
				
				<!-- 
				<div class="form-group">
					<div class="col-sm-offset-1 col-sm-11">
						<button type="submit" class="btn_payment">결제</button>
					</div>
				</div>
				 -->
			</form>
		</div>
	</div>
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
	
	<script>
		
		var btn = document.getElementById("btn_payment");
		btn.addEventListener("click", payment);
		
		function payment(){
				
				var IMP = window.IMP; // 생략가능
				IMP.init('iamport');
				// 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
				// i'mport 관리자 페이지 -> 내정보 -> 가맹점식별코드
				IMP.request_pay({
				pg: 'inicis', // version 1.1.0부터 지원.
				/*
				'kakao':카카오페이,
				html5_inicis':이니시스(웹표준결제)
				'nice':나이스페이
				'jtnet':제이티넷
				'uplus':LG유플러스
				'danal':다날
				'payco':페이코
				'syrup':시럽페이
				'paypal':페이팔
				*/
				pay_method: 'card',
				/*
				'samsung':삼성페이,
				'card':신용카드,
				'trans':실시간계좌이체,
				'vbank':가상계좌,
				'phone':휴대폰소액결제
				*/
				merchant_uid: 'merchant_' + new Date().getTime(),
				/*
				merchant_uid에 경우
				https://docs.iamport.kr/implementation/payment
				위에 url에 따라가시면 넣을 수 있는 방법이 있습니다.
				참고하세요.
				나중에 포스팅 해볼게요.
				*/
				name: '주문명:결제테스트',
				//결제창에서 보여질 이름
				amount: 1000,
				//가격
				buyer_email: 'iamport@siot.do',
				buyer_name: '구매자이름',
				buyer_tel: '010-1234-5678',
				buyer_addr: '서울특별시 강남구 삼성동',
				buyer_postcode: '123-456',
				m_redirect_url: 'https://www.yourdomain.com/payments/complete'
				/*
				모바일 결제시,
				결제가 끝나고 랜딩되는 URL을 지정
				(카카오페이, 페이코, 다날의 경우는 필요없음. PC와 마찬가지로 callback함수로 결과가 떨어짐)
				*/
				}, function (rsp) {
				console.log(rsp);
				if (rsp.success) {
				var msg = '결제가 완료되었습니다.';
				msg += '고유ID : ' + rsp.imp_uid;
				msg += '상점 거래ID : ' + rsp.merchant_uid;
				msg += '결제 금액 : ' + rsp.paid_amount;
				msg += '카드 승인번호 : ' + rsp.apply_num;
				} else {
				var msg = '결제에 실패하였습니다.';
				msg += '에러내용 : ' + rsp.error_msg;
				}
				alert(msg);
				});
		}
	
	</script>
	
</body>
</html>