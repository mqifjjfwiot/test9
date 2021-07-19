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
<script>
$(document).ready(function() {
	  $('#summernote').summernote({
		  placeholder: '글을 작성해주세요',
	      tabsize: 2,
	      height: 300,         
	      minHeight: null,
	      maxHeight: null,
	      toolbar: [
	          ['style', ['style']],
	          ['font', ['bold', 'underline', 'clear']],
	          ['color', ['color']],
	          ['para', ['ul', 'ol', 'paragraph']],
	          ['table', ['table']],
	          ['view', ['fullscreen', 'codeview', 'help']]
	        ]
	  });
	  
	});
</script>
<body>

<jsp:include page="../templates/mainheader.jsp" />
<div style="width: 60%; margin: 0 auto;">
	<form method="post" action="<c:url value='/Edit.do?bono=${record.bono }'/>">
		<input type="text" name="id" style="width: 20%;" value="${sessionScope.id }" disabled="disabled"/><br>
		<input type="hidden" name="id" value="${sessionScope.id }"/>
		<input type="text" class="form-control" name="title" placeholder="제목을 입력하세요?" value="${record.title}">
  		<textarea id="summernote" name="bcontent" placeholder="내용 입력하세요">${record.bcontent }</textarea>
  		<input type="submit" value="글 수정" class="btn btn-primary" style="float: right;"/>
	</form>
</div>
<div style="content: '';display: block;clear: both;"></div>
<jsp:include page="/WEB-INF/views/templates/Side.jsp" />
<jsp:include page="/WEB-INF/views/templates/mainfooter.jsp" />
</body>
</html>