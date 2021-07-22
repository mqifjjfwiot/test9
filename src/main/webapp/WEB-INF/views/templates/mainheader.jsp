<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
	div.top_border {
            padding-right: 10px;
            padding-left: 10px;
            border-top: 4px solid rgb(255, 166, 72);
            /*border:박스형/border-top:실선 solid:한줄,double:두줄 */
        }
        
	div.top_header {
            font-size: 14px;
        }
        
	div.title {
			text-align: center;
		}
	
	.title a {
            font-size: 300%;
            font-weight: bold;
            text-align: center;
            color: rgb(255, 166, 72);
            }
        
	body{
	font-family: 'Jua', sans-serif;
	/* padding-top:??px; :바디 크기*/
	}
	
	.navbar .navbar-nav {
  	display: inline-block;
  	float: none;
  	vertical-align: bottom;
	}

 	.navbar .navbar-collapse{
  	text-align: center;
  	font-size: 130%;
  	padding-left: 200px;
	}
	.dropdown-menu {
	min-width: 0px;
	}
	
</style>  
<!-- 바디 -->
<div class="top_border">
    </div>
<!-- top menu -->
<div class="top_header">
<nav class="navbar navbar-default" style="background-color: #ffffff;">
  <div class="container-fluid">
    <div>
      <ul class="nav navbar-nav navbar-right">
      <c:if test="${empty sessionScope.id }" var="login">
        	<li><a href="<c:url value="/Login.do"/>">로그인</a></li>
        	<li><a href="#">비회원로그인</a></li>
        	<li><a href="<c:url value="/SignUpMain.do"/>">회원가입</a></li>
        </c:if>
        <c:if test="${not login }">
        	<li><a href="<c:url value="/Logout.do"/>">로그아웃</a></li>
			<li><a href="<c:url value="/MyPage.do"/>">마이페이지</a></li>
			<li><a href="<c:url value="/ProductInser.do"/>">상품등록</a></li>
        </c:if>
        <li><a href="<c:url value="/Basket.do"/>">장바구니</a></li>
        <li><a href="<c:url value="/CustomerMain.do"/>">고객센터</a></li>
        <li><a href="<c:url value="/Notice.do"/>">공지사항</a></li>
        <li><a href="<c:url value="/aMartproductPage.do"/>">A_마트상품</a></li>
        <li><a href="<c:url value="/memberlist.do"/>">관리자</a></li>
      </ul>
    </div>
  </div>
</nav>
</div>

<div class="title">
        <p><a href="<c:url value="/home.do"/>">KOSMO마트<span class="glyphicon glyphicon-shopping-cart"></span></a></p>
    </div>

<div class="top_bottom">
<nav class="navbar navbar-default" style="background-color: #ffffff;">
  <div class="container-fluid">
  	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    <ul class="nav navbar-nav">
      
      <li class="nav-item"><a href="<c:url value="/Item/Items.do?menu=1"/>">신상품</a></li>
						<li class="nav-item"><a href="<c:url value="/Item/Items.do?menu=2"/>">행사상품</a></li>
						<li class="nav-item"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">신선식품 <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="<c:url value="/Item/Items.do?menu=3"/>">육류/계란</a></li>
								<li><a class="dropdown-item" href="<c:url value="/Item/Items.do?menu=4"/>">생선/어패류</a></li>
								<li><a class="dropdown-item" href="<c:url value="/Item/Items.do?menu=5"/>">과일</a></li>
								<li><a class="dropdown-item" href="<c:url value="/Item/Items.do?menu=6"/>">채소</a></li>
								<li><a class="dropdown-item" href="<c:url value="/Item/Items.do?menu=7"/>">쌀/잡곡/견과</a></li>
							</ul></li>
						<li class="nav-item"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">밀키트/반조리 <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="<c:url value="/Item/Items.do?menu=8"/>">밀키트</a></li>
								<li><a class="dropdown-item" href="<c:url value="/Item/Items.do?menu=9"/>">냉동/냉장/통조림</a></li>
								<li><a class="dropdown-item" href="<c:url value="/Item/Items.do?menu=10"/>">레토르트</a></li>
								<li><a class="dropdown-item" href="<c:url value="/Item/Items.do?menu=11"/>">육/어육가공품</a></li>
								<li><a class="dropdown-item" href="<c:url value="/Item/Items.do?menu=12"/>">김치</a></li>
								<li><a class="dropdown-item" href="<c:url value="/Item/Items.do?menu=13"/>">라면/면류</a></li>
								<li><a class="dropdown-item" href="<c:url value="/Item/Items.do?menu=14"/>">베이커리</a></li>
								<li><a class="dropdown-item" href="<c:url value="/Item/Items.do?menu=15"/>">과자/시리얼</a></li>
							</ul></li>
						<li class="nav-item"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">음료/차 <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="<c:url value="/Item/Items.do?menu=16"/>">생수</a></li>
								<li><a class="dropdown-item" href="<c:url value="/Item/Items.do?menu=17"/>">주스/탄산</a></li>
								<li><a class="dropdown-item" href="<c:url value="/Item/Items.do?menu=18"/>">차</a></li>
								<li><a class="dropdown-item" href="<c:url value="/Item/Items.do?menu=19"/>">주류</a></li>
							</ul></li>
    </ul>
  
    <form class="navbar-form navbar-right" action="#">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="검색어를 입력하세요" name="search">
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
            <i class="glyphicon glyphicon-search"></i>
          </button>
        </div>
      </div>
    </form>
  </div>
  </div>
</nav>
</div>

