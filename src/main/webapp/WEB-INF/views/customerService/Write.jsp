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
	          ['insert', ['link', 'picture', 'video']],
	          ['view', ['fullscreen', 'codeview', 'help']]
	        ]
	  });
	  
	});
</script>
</head>
<body>
<jsp:include page="../templates/mainheader.jsp" />
<div style="width: 60%; margin: 0 auto;">
	<form method="post">
  		<textarea id="summernote" name="editordata"></textarea>
	</form>
</div>
<jsp:include page="/WEB-INF/views/templates/Side.jsp" />
<jsp:include page="/WEB-INF/views/templates/mainfooter.jsp" />
</body>
</html>