<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일반 회원가입</title>
<jsp:include page="../templates/Links.jsp" />
</head>
<!-- daum 도로명주소 찾기 api -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>
	//우편번호 찾기 버튼 클릭시 발생 이벤트 
	function execPostCode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분. 

						// 도로명 주소의 노출 규칙에 따라 주소를 조합한다. 
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다. 
						var fullRoadAddr = data.roadAddress; // 도로명 주소 변수 
						var extraRoadAddr = ''; // 도로명 조합형 주소 변수 

						// 법정동명이 있을 경우 추가한다. (법정리는 제외) 
						// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다. 
						if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
							extraRoadAddr += data.bname;
						}
						// 건물명이 있고, 공동주택일 경우 추가한다. 

						if (data.buildingName !== '' && data.apartment === 'Y') {
							extraRoadAddr += (extraRoadAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						// 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다. 

						if (extraRoadAddr !== '') {
							extraRoadAddr = ' (' + extraRoadAddr + ')';
						}
						// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다. 

						if (fullRoadAddr !== '') {
							fullRoadAddr += extraRoadAddr;
						}
						// 우편번호와 주소 정보를 해당 필드에 넣는다.

						console.log(data.zonecode);
						console.log(fullRoadAddr);
						/* 		var a = console.log(data.zonecode); 
						var b = console.log(fullRoadAddr); 
						
						if(a == null || b = null)
							{ alert("주소를 확인하세요."); 
							return false;
							} 	*/

						$("[name=oaddr]").val(data.zonecode);
						$("[name=address]").val(fullRoadAddr);

						document.getElementById('oaddr').value = data.zonecode; //5자리 새우편번호 사용 
						document.getElementById('address').value = fullRoadAddr;

						//document.getElementById('mem_detailaddress').value = data.jibunAddress;
					}
				}).open();
	}
</script>
<script>
	IMP.init("imp00000000");
	IMP.certification(
			//파라미터 생략시 빈 object는 입력해줘야한것 같음. 제거 시 모듈 동작 안함.
			        {},
			        function (rsp) {
			            //본인인증 성공 프로세스
			            if (rsp.success) {
			            
			            }
			            //본인인증 실패 프로세스
			            else{
			                alert("인증에 실패하였습니다. 에러 내용: " +  rsp.error_msg);
			            }
			        }
			    );
	
	IMP.certification(
			  function (rsp) { 
			  	//인증 성공시
			    if (rsp.success) { 
			      // jQuery로 본인 웹서버로 요청
			      $.ajax({
			      	type: 'POST',
			       	url: '인증정보 조회할 본인 웹서버 API 경로',
			       	dataType: 'json',
			       	data: {'imp_uid' : rsp.imp_uid},
			      });
			    }else{
			      alert("인증에 실패하였습니다. 에러 내용: " +  rsp.error_msg);
			    }
			  });
			  
			  
			  
			  //callback rsp 인자 값
			 {
			      error_code: null
			      error_msg: null
			      imp_uid: "고유인증값"
			      merchant_uid: "주문번호(신경안써도됌)"
			      pg_provider: "danal" //PG사
			      pg_type: "certification" //PG타입(본인인증)
			      success: true // 성공
			}
			  
			//web.php
			 Route::post('/iamport/certificate', [Controller::class,'certificate']);

			 //Controller
			 function certificate(Request $request){
			       //아임포트 관리자 페이지의 시스템설정->내정보->REST API 키 값을 입력한다.
			       $imp_key = "REST API 키";
			       //아임포트 관리자 페이지의 시스템설정->내정보->REST API Secret 값을 입력한다.
			       $imp_secret = "REST API Secret";
			       //본인인증 모듈을 호출한 페이지에서 ajax로 넘겨받은 imp_uid값을 저장한다.
			       $imp_uid = $request->input('imp_uid');
			     
			       try{
			         $getToken  = Http::withHeaders([
			           'Content-Type' => 'application/json'
			         ])->post('https://api.iamport.kr/users/getToken', [
			           'imp_key' => $imp_key,
			           'imp_secret' => $imp_secret,
			         ]);
			         /**
			          * 본인인증한 사람의 정보를 얻기 위해서는 아임포트 API 통신을해야 한다.
			          * api access_key를 얻기위해 아임포트에서 제공되는 imp_key,imp_secret을 이용하여
			          * 아래 api로 token을 얻는다.
			          * return 값이 json이므로 decode하여 원하는 값을 들고온다.
			         */
			         $getTokenJson = json_decode($getToken, true);
			         
			         //API TOKEN
			         $access_token = $getTokenJson['response']['access_token'];
			         $getCertifications=Http::withHeaders([
			           'Authorization' => $access_token
			         ])->get('https://api.iamport.kr/certifications/'.$imp_uid);

			         $getCertificationsJson = json_decode($getCertifications,true);
			         $responseData = $getCertificationsJson['response'];

			         $result = ['code'=>200, 'message'=>'success','data'=>$responseData];
			       }catch(Exception $e){
			         $result = [
			           'code' => 410,
			           'message' => $e->getMessage()
			         ];
			       }

			       return response()->json($result);
			       
			     }
			     
			     //$responseData 상세 값
			     
			    {
			     "birth":, //무슨 표기법으로 표시한지 모르겠음.
			     "birthday":"YYYY-MM-DD",
			     "carrier":"SKT", //통신사
			     "certified":true, //인증 성공 여부
			     "certified_at":인증날짜,
			     "foreigner":false, //외국인 여부
			     "gender":"male", // 성별
			     "imp_uid":"인증고유값",
			     "name":"이름",
			     "origin":"요청URL",
			     "pg_provider":"danal", //PG사
			     "pg_tid":"요청일시",
			     "phone":"휴대폰번호",

			     }
			    



</script>

<body>
	<!-- 네비게이션 시작 -->
	<jsp:include page="../templates/mainheader.jsp" />
	<!-- 네비게이션 끝 -->
	
	<article class="container">
		<div class="page-header">
			<div class="col-md-9 col-md-offset-3">
				<h3>회원가입</h3>
				${message }
			</div>
		</div>

		<form action="<c:url value="/join.do"/>" method="post">

			<div class="form-group">
				<label for="id">아이디</label> <input type="text" class="form-control"
					id="id" name="id" placeholder="ID">
				<div class="eheck_font" id="id_check"></div>
			</div>

			<div class="form-group">
				<label for="pwd">비밀번호</label> <input type="password"
					class="form-control" id="pwd" name="pwd" placeholder="PASSWORD">
				<div class="eheck_font" id="pw_check"></div>

			</div>
			<div class="form-group">
				<label for="pw2">비밀번호 확인</label> 
				<input type="password" class="form-control" id="pwdCheck" name="pwdCheck" placeholder="Confirm Password">
				<div class="eheck_font" id="pw2_check"></div>
				<span>${different }</span>
			</div>

			<div class="form-group">
				<label for="name">이름</label> <input type="text"
					class="form-control" id="name" name="name"
					placeholder="name">
				<div class="eheck_font" id="name_check"></div>
			</div>


			<div class="form-group">
				<label for="tel">휴대폰 번호('-'없이 번호만 입력해주세요)</label> <input
					type="tel" class="form-control" id="tel" name="tel"
					placeholder="Phone Number">
				<div class="eheck_font" id="phone_check"></div>
			</div>

			<div class="form-group">
				<label for="email">이메일 주소</label> <input type="email"
					class="form-control" id="mail" name="mail"
					placeholder="E-mail">
					
				<div class="eheck_font" id="email_check"></div>
			</div>

			<div class="form-group">
				<label for="addr">주소</label> 
				<input class="form-control" style="width: 40%; display: inline;" placeholder="우편번호"
					name="addr" id="oaddr" type="text"
					readonly="readonly">
				<button type="button" class="btn btn-default"
					onclick="execPostCode();">
					<i class="fa fa-search"></i> 우편번호 찾기
				</button>
			</div>

			<div class="form-group">
				<input class="form-control" style="top: 5px;" placeholder="도로명 주소"
					name="address" id="address" type="text"
					readonly="readonly" />
			</div>

			<div class="form-group">
				<input class="form-control" placeholder="상세주소"
					name="addr" id="Rider_detailaddress" type="text" />
			</div>


			<div class="form-group text-center">
				<button type="submit" class="btn btn-primary">회원가입</button>
			</div>


		</form>
	</article>
	<!--  푸터 시작 -->
	<jsp:include page="/WEB-INF/views/templates/Side.jsp" />
	<jsp:include page="/WEB-INF/views/templates/mainfooter.jsp" />
	<!-- 푸터 끝 -->
</body>
</html>