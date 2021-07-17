<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../templates/Links.jsp" />
<title>Insert title here</title>
</head>
<style>
	.titleClick:hover, .commentDelete:hover {
		text-decoration: underline;
	}
	
	.titleClick, .commentDelete {
		color: lightblue;
		cursor: pointer;
	}
</style>
<body>
<jsp:include page="../templates/mainheader.jsp" />
<div class="container">
	<div class="page-header">
		<h1>
			<small>게시글 보기</small>
		</h1>
	</div>
	
	<div class="row">
		<div class="col-md-offset-2 col-md-8">
			<table class="table table-bordered table-striped">
				<tr>
					<th class="col-md-2 text-center">번호</th>
					<td>${record.bono}</td>
				</tr>
				<tr>
					<th class="text-center">제목</th>
					<td>${record.sno}</td>
				</tr>
				<tr>
					<th class="text-center">작성자</th>
					<td>${record.name}</td>
				</tr>
				<tr>
					<th class="text-center">등록일</th>
					<td>${record.postDate}</td>
				</tr>
				<tr>
					<th class="text-center" colspan="2">내용</th>
				</tr>
				<tr>
					<td colspan="2">${record.bcontent}</td>
				</tr>
			</table>
		</div>
	</div>
	<!-- row -->
	<div class="row">
		<div class="col-md-offset-2 col-md-8">
			<!-- .center-block 사용시 해당 블락의 크기를 지정하자 -->
			<ul id="pillMenu" class="nav nav-pills center-block"
				style="width: 200px; margin-bottom: 10px">
			<c:if test="${sessionScope.id == record.id }">
					<li><a
						href="<c:url value='/Edit.do?no=${record.bono}'/>"
						class="btn btn-success">수정</a></li>
					<li><a href="javascript:isDelete();" class="btn btn-success">삭제</a></li>
			</c:if>

				<li><a href="<c:url value='/CustomerBoard.do?nowPage=${param.nowPage}'/>" class="btn btn-success">목록</a></li>
			</ul>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/templates/Side.jsp" />
<jsp:include page="/WEB-INF/views/templates/mainfooter.jsp" />
<script>
function isDelete(){
	if(confirm("삭제하시겠습니까?")){
		location.replace("<c:url value="/Delete.do?bono=${record.bono}"/>");
	}
}
</script>
</body>
</html>