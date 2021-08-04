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

<style>
table {
	cellspacing: "1";
	bgcolor: "gray";
	border-collapse: separate;
	border-spacing: 0 10px;
}

tr {
	bgcolor: "white";
}

#insertContainer {
	font-size: 1.5em;
}

#p_legend {
	font-family: fantasy;
}

input {
	font-family: monospace;
}

.ui-tabs-vertical {
	width: 55em;
}

.ui-tabs-vertical .ui-tabs-nav {
	padding: .2em .1em .2em .2em;
	float: left;
	width: 12em;
}

.ui-tabs-vertical .ui-tabs-nav li {
	clear: left;
	width: 100%;
	border-bottom-width: 1px !important;
	border-right-width: 0 !important;
	margin: 0 -1px .2em 0;
}

.ui-tabs-vertical .ui-tabs-nav li a {
	display: block;
}

.ui-tabs-vertical .ui-tabs-nav li.ui-tabs-active {
	padding-bottom: 0;
	padding-right: .1em;
	border-right-width: 1px;
}

.ui-tabs-vertical .ui-tabs-panel {
	padding: 1em;
	float: right;
	width: 40em;
}
</style>

</head>
<body>
	<!-- 네비게이션 시작 -->
	<jsp:include page="../templates/mainheader.jsp" />
	<!-- 네비게이션 끝 -->
	<!-- 실제 내용 시작 -->
	<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->

	<div class="container" id='insertContainer'>
		<div class="row">
			<div class="col-xs-2">
				<div id="tabs">
					<ul>
						<li><a href="#tabs-1">상품 등록</a></li>
						<li><a href="#tabs-2">상품 수정</a></li>
						<li><a href="#tabs-3">상품 삭제</a></li>
					</ul>
				</div>
			</div>
			<div class="col-xs-10">

				<div id="tabs-1">
					<h2>상품 등록</h2>

					<form action="<c:url value='/Item/Upload.do'/>" method="post"
						enctype="multipart/form-data">
						<table>
							<tr>
								<td>상품명</td>
								<td><input type="text" name="INAME" minlength="2"
									maxlength="20" size="17"></td>
							</tr>
							<tr>
								<td>상품정보(홍보문구)</td>
								<td><input type="text" name="INAME2" minlength="5"
									maxlength="50" size="50"></td>
							</tr>
							<tr>
								<td>상품정보(추가설명)</td>
								<td><input type="text" name="INAME3" maxlength="50"
									size="50"></td>
							</tr>
							<tr>
								<td>가격</td>
								<td><input type="text" name="PRICE" minlength="1"
									maxlength="20" size="15">(원)</td>
							</tr>
							<tr>
								<td>상호명</td>
								<td><input type="text" name="BRAND" minlength="1"
									maxlength="20" size="20"></td>
							</tr>
							<tr>
								<td>상품 카테고리</td>
								<td><select name="p_category" id='p_category'>
										<option value="fresh">신선식품</option>
										<option value="milkket">밀키트/반조리</option>
										<option value="drink">음료/차</option>
								</select></td>
							</tr>
							<tr>
								<td>상품 카테고리(상세)</td>
								<td><select name="CATEGORY" id="sub_category">
										<option value="meat">육류/계란</option>
										<option value="fish">생선/어패류</option>
										<option value="furit">과일</option>
										<option value="vegetable">채소</option>
										<option value="rice">쌀/잡곡/견과</option>
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
								<td colspan="2"><input type="submit" id="Insert_btn"
									value="업로드" /></td>
							</tr>
						</table>
					</form>
				</div>
				<div id="tabs-2">
					<h2>상품 수정</h2>
					<p>Morbi tincidunt, dui sit amet facilisis feugiat, odio metus
						gravida ante, ut pharetra massa metus id nunc. Duis scelerisque
						molestie turpis. Sed fringilla, massa eget luctus malesuada, metus
						eros molestie lectus, ut tempus eros massa ut dolor. Aenean
						aliquet fringilla sem. Suspendisse sed ligula in ligula suscipit
						aliquam. Praesent in eros vestibulum mi adipiscing adipiscing.
						Morbi facilisis. Curabitur ornare consequat nunc. Aenean vel
						metus. Ut posuere viverra nulla. Aliquam erat volutpat.
						Pellentesque convallis. Maecenas feugiat, tellus pellentesque
						pretium posuere, felis lorem euismod felis, eu ornare leo nisi vel
						felis. Mauris consectetur tortor et purus.</p>
				</div>
				<div id="tabs-3">
					<h2>상품 삭제</h2>
					<p>Mauris eleifend est et turpis. Duis id erat. Suspendisse
						potenti. Aliquam vulputate, pede vel vehicula accumsan, mi neque
						rutrum erat, eu congue orci lorem eget lorem. Vestibulum non ante.
						Class aptent taciti sociosqu ad litora torquent per conubia
						nostra, per inceptos himenaeos. Fusce sodales. Quisque eu urna vel
						enim commodo pellentesque. Praesent eu risus hendrerit ligula
						tempus pretium. Curabitur lorem enim, pretium nec, feugiat nec,
						luctus a, lacus.</p>
					<p>Duis cursus. Maecenas ligula eros, blandit nec, pharetra at,
						semper at, magna. Nullam ac lacus. Nulla facilisi. Praesent
						viverra justo vitae neque. Praesent blandit adipiscing velit.
						Suspendisse potenti. Donec mattis, pede vel pharetra blandit,
						magna ligula faucibus eros, id euismod lacus dolor eget odio. Nam
						scelerisque. Donec non libero sed nulla mattis commodo. Ut
						sagittis. Donec nisi lectus, feugiat porttitor, tempor ac, tempor
						vitae, pede. Aenean vehicula velit eu tellus interdum rutrum.
						Maecenas commodo. Pellentesque nec elit. Fusce in lacus. Vivamus a
						libero vitae lectus hendrerit hendrerit.</p>
				</div>
			</div>
		</div>
	</div>

	<!-- 실제 내용 끝 -->
	<!--  푸터 시작 -->

	<jsp:include page="/WEB-INF/views/templates/Side.jsp" />
	<jsp:include page="/WEB-INF/views/templates/mainfooter.jsp" />
	<!-- 푸터 끝 -->
	<script>
		$(function() {
			$("#tabs").tabs().addClass("ui-tabs-vertical ui-helper-clearfix");
			$("#tabs li").removeClass("ui-corner-top").addClass(
					"ui-corner-left");
		});
		$("#p_category").change(
				function() {
					console.log('과정 선택:', $(this).val());
					//ajax로 요청]
					$.ajax({
						url : "<c:url value="/Item/Category.do"/>",
						data : {
							p_category : $(this).val()
						},
						dataType : 'json'
					}).done(
							function(data) {
								console.log("서버로부터 받은 데이타:", data);
								var options = "";
								$.each(data, function(key, value) {
									options += "<option value='"+key+"'>"
											+ value + "</option>";
								});
								$('#sub_category').html(options);

							}).fail(function(request, error) {
						console.log('상태코드:', request.status);
						console.log('서버로부터 받은 HTML:', request.responseText);
						console.log('에러:', error);
					});
				});
	</script>
</body>
</html>