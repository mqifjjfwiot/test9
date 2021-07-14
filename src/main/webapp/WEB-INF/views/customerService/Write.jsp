<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <jsp:include page="../templates/Links.jsp" />
 <title>SummerNoteExample</title>
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
</head>
<body>
<jsp:include page="../templates/mainheader.jsp" />
<div style="width: 60%; margin: 0 auto;">
	<form method="post" action="#">
		<input type="text" name="id" style="width: 20%;" value="${sessionScope.id }" disabled="disabled"/><br>
		<input type="hidden" name="id" value="${sessionScope.id }"/>
		<input type="text" name="title" style="width: 40%;" placeholder="제목"/>
  		<textarea id="summernote" name="editordata"></textarea>
  		<input type="submit" value="글 작성" style="float: right;"/>
	</form>
</div>
<jsp:include page="/WEB-INF/views/templates/Side.jsp" />
<jsp:include page="/WEB-INF/views/templates/mainfooter.jsp" />
</body>
</html>