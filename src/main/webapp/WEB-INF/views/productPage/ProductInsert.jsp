<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>ProductInsert</title>

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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="<c:url value="/bootstrap/js/bootstrap.min.js"/>"></script>
<style>
table {
	cellspacing: "1";
	bgcolor: "gray";
	border-collapse: separate;
	border-spacing: 0px 10px 10px 0px;
}

tr {
	bgcolor : "white";
	
}

td {
	
}
</style>
</head>
<body>
	<!-- 네비게이션 시작 -->
	<jsp:include page="../templates/mainheader.jsp" />
	<!-- 네비게이션 끝 -->
	<!-- 실제 내용 시작 -->
	<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->

	<div class="container">
		<div class="row">
			<div class="col-xs-10">
				<fieldset>
					<legend>상품 등록</legend>
					<form action="<c:url value='#'/>" method="post"
						enctype="multipart/form-data">
						<table>
							<tr>
								<td>상품명</td>
								<td><input type="text" minlength="2" maxlength="20"
									size="20"></td>
							</tr>
							<tr>
								<td>상품정보(홍보문구)</td>
								<td><input type="text" minlength="5" maxlength="50"
									size="50"></td>
							</tr>
							<tr>
								<td>상품정보(추가설명)</td>
								<td><input type="text" maxlength="50" size="50"></td>
							</tr>
							<tr>
								<td>가격</td>
								<td><input type="text" minlength="1" maxlength="20"
									size="20"></td>
							</tr>
							<tr>
								<td>상호명</td>
								<td><input type="text" minlength="1" maxlength="20"
									size="20"></td>
							</tr>
							<tr>
								<td>상품 카테고리(대분류)</td>
								<td><select name="p_category">
										<option value="main">대분류를 선택하세요</option>
										<option value="fresh">신선식품</option>
										<option value="milkket">밀키트/반조리</option>
										<option value="drink">음료/차</option>
										
								</select></td>
							</tr>
							<tr>
								<td>상품 카테고리(소분류)</td>
								<td><select name="sub_category1">
										<option value="simple">소분류를 선택하세요</option>
										<option value="meat">육류/계란</option>
										<option value="fish">생선/어패류</option>
										<option value="furit">과일</option>
										<option value="vegetable">채소</option>
										<option value="rice">쌀/잡곡/견과</option>
										<option value="milkket">밀키트</option>
										<option value="frozen">냉동/냉장/통조림</option>
										<option value="meatfish">육/어육가공품</option>
										<option value="kimchi">김치</option>
										<option value="noodle">라면/면류</option>
										<option value="bakery">베이커리</option>
										<option value="snack">과자/시리얼</option>
										<option value="water">생수</option>
										<option value="juice">주스/탄산</option>
										<option value="tea">차</option>
										<option value="alcohol">주류</option>
								</select></td>
							</tr>
							<tr>
								<td>상품 카테고리(소분류)</td>
								<td><select name="sub_category2">
										<option value="simple">소분류를 선택하세요</option>
										<option value="milkket">밀키트</option>
										<option value="frozen">냉동/냉장/통조림</option>
										<option value="meatfish">육/어육가공품</option>
										<option value="kimchi">김치</option>
										<option value="noodle">라면/면류</option>
										<option value="bakery">베이커리</option>
										<option value="snack">과자/시리얼</option>
								</select></td>
							</tr>
							<tr>
								<td>상품 카테고리(소분류)</td>
								<td><select name="sub_category3">
										<option value="simple">소분류를 선택하세요</option>
										<option value="water">생수</option>
										<option value="juice">주스/탄산</option>
										<option value="tea">차</option>
										<option value="alcohol">주류</option>
								</select></td>
							</tr>
							<tr>
								<td>상품 이미지</td>
								<td><input type="file" name="upload" size="30" /></td>
							</tr>
							<tr>
								<td>상품 추가이미지</td>
								<td><input type="file" name="upload" size="30" /></td>
							</tr>
							<tr>
								<td>상품 설명페이지</td>
								<td><input type="file" name="upload" size="30" /></td>
							</tr>
							<tr>
								<td>교환/환불 이미지</td>
								<td><input type="file" name="upload" size="30" /></td>
							</tr>
							<tr>
								<td colspan="2"><input type="submit" value="업로드" /></td>
							</tr>
						</table>
					</form>
					<span style="color: red; font-size: 1.8em">${empty param.error ?'':'파일 용량 초과'}</span>
				</fieldset>
			</div>
		</div>
	</div>
	<!-- 실제 내용 끝 -->
	<!--  푸터 시작 -->

	<jsp:include page="/WEB-INF/views/templates/Side.jsp" />
	<jsp:include page="/WEB-INF/views/templates/mainfooter.jsp" />
	<!-- 푸터 끝 -->
</body>
</html>