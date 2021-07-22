<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>구매/결제내역</title>

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
    
<style >


dt, dd {
  padding: 5px;
  width:fit-content;
  margin:0;
}

dt {
  background-color: white;
  
  
}


dd {
  background-color: white;
  margin-bottom: 5px;
  display: none;
}
</style>

</head>
<body>
	<!-- 네비게이션 시작 -->
	<jsp:include page="../templates/mainheader.jsp" />
	<!-- 네비게이션 끝 -->
	<!-- 실제 내용 시작 -->
	<div class="container">
		<div class="page-header">
			<h1>구매/결제내역</h1>
				<div class="payment-header">
					<span>${imp_uid }님 주문이 완료</span>되었습니다. 감사합니다!



				<dl class="accodian">
					<dt><a>클릭해서 주문한 상품 보기</a></dt>
					<dd>
						주문한 물건 리스트
					</dd>
				</dl>
			</div>


				<table class="pament-body">
					<tbody>
						<tr>
							<td class="order info" style="padding:20px 50px 30px 20px;">
								<div	class="div info">
									<table class="info">
										<caption>받는사람 정보</caption>
										<colgroup>
											<col width="80">
											<col>
											<col width="70">
										</colgroup>
										<tbody>
											<tr>
												<td>받는사람</td>
												<td> / 010-2093-0248</td>
												<td></td>
											</tr>
											<tr>
												<td>받는주소</td>
												<td>21523<!-- --> <!-- -->인천광역시 남동구 만수동 1115-1
													향촌휴먼시아1단지아파트 135동 701호
												</td>
												<td><span>변경하기 〉</span></td>
											</tr>
											<tr>
												<td>배송요청사항</td>
												<td><span>문 앞</span></td>
												<td><span>변경하기 〉</span></td>
											</tr>
										</tbody>
									</table>
								</div>
							</td>
							<td class="payment info">
								<table class="info">
									<caption>결제 정보 상세 내역</caption>
									<colgroup>
										<col width="100">
										<col>
									</colgroup>
									<tbody>
										<tr>
											<td>주문금액</td>
											<td>29,800<!-- -->원
											</td>
										</tr>
										<tr>
											<td>배송비</td>
											<td>+<!-- -->0<!-- -->원
											</td>
										</tr>
									</tbody>
									<tfoot>
										<tr>
											<td>총 결제금액</td>
											<td><span
												style="font-size: 10px; color: #888888; margin-right: 3px">국민카드</span><span
												style="font-size: 20px; color: #AA0000; font-weight: 700">29,800</span><span
												style="font-size: 15px; color: #AA0000">원</span></td>
										</tr>
									</tfoot>
								</table>
							</td>
						</tr>
					</tbody>
				</table>
				<div class="button-group">
					<button class="link_order info">주문 상세보기</button><!-- 내정보 -> 주문한 물품 보는 사이트가 있으면 그쪽으로 연결 -->
					<button><a href="<c:url value="/home.do"/>" class="link_home">쇼핑 계속하기</a></button>
				</div>

			</div>
	</div>

	
	<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->

	<script src="<c:url value="/bootstrap/js/bootstrap.min.js"/>"></script>
	
	<script>
	var acodian = {
			  click: function(target) {
			    var $target = $(target);
			    $target.on('click', function() {

			      if ($(this).hasClass('on')) {
			        slideUp($target);
			      } else {
			        slideUp($target);
			        $(this).addClass('on').next().slideDown();
			      }

			      function slideUp($target) {
			        $target.removeClass('on').next().slideUp();
			      }

			    });
			  }
			};
			acodian.click('.accodian > dt');
	</script>
	
	
	
	<!-- 실제 내용 끝 -->
	<!--  푸터 시작 -->
	<jsp:include page="/WEB-INF/views/templates/Side.jsp" />
	<jsp:include page="/WEB-INF/views/templates/mainfooter.jsp" />
	<!-- 푸터 끝 -->
</body>
</html>