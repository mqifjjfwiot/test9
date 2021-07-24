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

</head>
<body>
	<!-- 네비게이션 시작 -->
	<jsp:include page="../templates/mainheader.jsp" />
	<!-- 네비게이션 끝 -->
	<!-- 실제 내용 시작 -->
	<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->

	<div class="container">
		<div class="page-header">
			<h1>
				스프링<small>파일 업로드/다운로드</small>
			</h1>
		</div>
		<fieldset>
			<legend>파일업로드 폼</legend>
			<a href="<c:url value='/FileUpDown/List.do'/>">파일 목록</a>
			<form action="<c:url value='/FileUpDown/Upload.do'/>" method="post"
				enctype="multipart/form-data">
				<table cellspacing="1" bgcolor="gray">
					<tr bgcolor="white">
						<td>올린이</td>
						<td><input type="text" name="writer" /></td>
					</tr>
					<tr bgcolor="white">
						<td>제목</td>
						<td><input type="text" name="title" size="50" /></td>
					</tr>
					<tr bgcolor="white">
						<td>첨부파일</td>
						<td><input type="file" name="upload" size="30" /></td>
					</tr>
					<tr bgcolor="white" align="center">
						<td colspan="2"><input type="submit" value="업로드" /></td>
					</tr>
				</table>
			</form>
			<span style="color: red; font-size: 1.8em">${empty param.error ?'':'파일 용량 초과'}</span>
		</fieldset>
	</div>
	<!-- 실제 내용 끝 -->
	<!--  푸터 시작 -->

	<jsp:include page="/WEB-INF/views/templates/Side.jsp" />
	<jsp:include page="/WEB-INF/views/templates/mainfooter.jsp" />
	<!-- 푸터 끝 -->

</body>
</html>