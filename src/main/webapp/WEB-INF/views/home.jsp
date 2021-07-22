<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>home.jsp</title>
 <jsp:include page="templates/Links.jsp" />
  
  <link rel="stylesheet" href="../../styles/basic.css">
  
</head>
<body>

	<div class="container-fluid">
		<%@ include file="templates/mainheader.jsp"%>
			
<!--div class="btn-group btn-group-justified">
  <a href="#" class="btn btn-danger">신상품</a>
  <a href="#" class="btn btn-primary">행사상품</a>
  <a href="#" class="btn btn-info">신선식품</a>
  <a href="#" class="btn btn-primary">밀키트,반조리</a>
  <a href="#" class="btn btn-success">음료/차</a>
</div-->

<div class="row"> <!-- 화면분할은 12등분 -->
  <div class="col-xs-10">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="<c:url value="/images/manager2.jpg"/>" alt="Image" style="width: 1400px; height: 400px">
        <div class="carousel-caption">
          <h3>예제1</h3>
          <p>예제1</p>
        </div>      
      </div>
      
      <div class="item">
        <img src="<c:url value="/images/manager2.jpg"/>" alt="Image" style="width: 1400px; height: 400px">
        <div class="carousel-caption">
          <h3>예제2</h3>
          <p>예제2</p>
        </div>      
      </div>
      
      <div class="item">
        <img src="<c:url value="/images/manager1.jpg"/>" alt="Image" style="width: 1400px; height: 400px">
        <div class="carousel-caption">
          <h3>예제3</h3>
          <p>예제3</p>
        </div>      
      </div>
    </div>
   

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>
<div class="container text-center">    
  <h3>인기 상품</h3>
  <br>
  <div class="row">
    <div class="col-sm-2">
      <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
      <p>상품 1</p>
    </div>
    <div class="col-sm-2"> 
      <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
      <p>상품 2</p>    
    </div>
    <div class="col-sm-2"> 
      <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
      <p>상품 3</p>
    </div>
    <div class="col-sm-2"> 
      <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
      <p>상품 4</p>
    </div> 
    <div class="col-sm-2"> 
      <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
      <p>상품 5</p>
    </div>     
    <div class="col-sm-2"> 
      <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
      <p>상품 6</p>
    </div> 
  </div>
</div><br>
</div>



				</div>
				</div>
<!-- footer class="container-fluid text-center">
  <p>푸터</p>
</footer-->
<jsp:include page="/WEB-INF/views/templates/Side.jsp" />
<jsp:include page="/WEB-INF/views/templates/mainfooter.jsp" />
</body>
</html>
