<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
<title>관리자</title>

<!-- CustomerMain.jsp에서 연결. 고객 문의 게시판 -->

<!-- 부트스트랩 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="<c:url value="/styles/common.css"/>">
<link href="<c:url value="/bootstrap/css/bootstrap.min.css"/>"
	rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
    <div id="logo">
    </div>
	<div id="wrap">
        <div class="row" id="content">
            <div class="col-md-10">
                <table class="table table-bordered table-hover table-condensed text-center">
                <tr>
                	<th class="col-md-1 text-center"><input id="allCheck" type="checkbox" name="allCheck"/></th>
                    <th class="col-md-1 text-center">아이디</th>
                    <th class="text-center">이름</th>
                    <th class="col-md-1 text-center">전화번호</th>
                    <th class="col-md-2 text-center">가입일</th>
                </tr>
                <c:if test="${empty listPagingData.lists }" var="isEmpty">
					<tr>
						<td colspan="4">가입된 회원이 없습니다</td>
					</tr>
				</c:if>
				<c:if test="${not isEmpty }">
					<c:forEach items="${listPagingData.lists }" var="item" varStatus="loop">
						<tr>
							<td><input name="rowCheck" type="checkbox" value="${item.id}"></td>
							<td class="text-left" id="id">${item.id }</td>
							<td>${item.name }</td>
							<td>${item.tel}</td>
							<td>${item.birth}</td>
						</tr>
					</c:forEach>
				</c:if>
                </table>
            </div>
        </div>
        <div class="row" id="paging">
            <div class="col-md-12 text-center">${listPagingData.pagingString}</div>
        </div>
        <input type="button" value="선택삭제" class="btn btn-outline-info" onclick="deleteMember();"/>
	<jsp:include page="/WEB-INF/views/templates/Side.jsp" />
    </div>
    <!--  푸터 시작 -->
	<!-- 푸터 끝 -->
	<jsp:include page="/WEB-INF/views/templates/mainfooter.jsp" />
	<script>
	$(function() {
		var chkObj = document.getElementsByName("rowCheck");
		var rowCnt = chkObj.length;
		$("input[name='allCheck']").click(function() {
			var chk_listArr = $("input[name='rowCheck']");
			if($("input[name='rowCheck']:checked").length==rowCnt){
				for(var i = 0; i < chk_listArr.length;i++){
					chk_listArr[i].checked = false;
				}
			}
			else{
				for(var i = 0; i < chk_listArr.length;i++){
					chk_listArr[i].checked = true;
				}
			}
		});
		$("input[name='rowCheck']").click(function() {
			if($("input[name='rowCheck']:checked").length==rowCnt){
				$("input[name='allCheck']")[0].checked = true;
			}
			else{
				$("input[name='allCheck']")[0].checked = false;
			}
		});
	});
		function deleteMember() {
			//var url = "memberDelete.do";
			var url = "<c:url value="/memberDelete.do"/>";
			var valueArr = new Array();
			var list = $("input[name='rowCheck']");
			for(var i=0;i < list.length;i++){
				if(list[i].checked){
					valueArr.push(list[i].value);
					//console.log(list[i].value);
				}
			}
			if(valueArr.length==0){
				alert("선택된 회원이 없습니다");
			}
			else{
				valueArr = JSON.stringify(valueArr);
				var chk = confirm("정말로 탈퇴처리 하시겠습니까?");
				if(chk){
					$.ajax({
						url : url,
						type : 'POST',
						dataType : 'json',
						data : {
							valueArr : valueArr
						},
						success : function(data) {
							console.log('여기로 들어오나?');
								alert("탈퇴처리 완료");
								location.replace("<c:url value="/memberlist.do"/>");
						},
						error : function() {
								location.replace("<c:url value="/memberlist.do"/>");
							console.log('여기는 에러?');
						}
					})
				}
			}
		}
	</script>
</body>
</html>