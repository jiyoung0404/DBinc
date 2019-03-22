<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">		<!-- 뷰포트 -->
	<meta name="viewport" content="width=device-width" initial-scale="1">	<!-- 스타일시트 참조  -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<meta charset="UTF-8"/>
	
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
	<script src="//developers.kakao.dcom/sdk/js/kakao.min.js"></script>
	
	<title>Home | Triangle</title>
    
    <%@ include file="header/header_head.jsp" %>
</head>

<body>
	<%@ include file = "header/header_body.jsp" %>
	<!-- 로긴폼 -->
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<!-- 점보트론 -->
			<div class="jumbotron" style="padding-top: 20px;">
				<!-- 로그인 정보를 숨기면서 전송post -->
				<form method="post" action="joinAction.jsp">
					<h3 style="text-align: center;">회원가입</h3>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Email(ID)"
							name="userEmail" maxlength="30">
					</div>									<!-- placeholder : 특정 영역에서의 안내문구를 의미합니다. -->
					
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호"
							name="userPassword" maxlength="20">
					</div>
					
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호 확인"
							name="userPassword" maxlength="20">
					</div>

					<div class="form-group">
						<input type="text" class="form-control" placeholder="이름"
							name="userName" maxlength="10">
					</div>

					<div class="form-group" style="text-align: center;">
						<div class="btn-group" data-toggle="buttons">

							<label class="btn btn-primary active"> 
								<input type="radio" name="userGender"
							 		autocomplete="off" value="남자" checked>남자
							</label>
							
							<label class="btn btn-primary">
								<input type="radio" name="userGender"
									autocomplete="off" value="여자" >여자
							</label>
						</div>
					</div>

					
					<div class="form-group">
						<input type="text" class="form-control" placeholder="핸드폰번호( - 없이 입력)"
							name="userPhone" maxlength="15">
					</div>
					
					<div class="form-group">
						<input type="text" class="form-control" placeholder="생년월일( 6자리 )"
							name="userBirth" maxlength="10">
					</div>


					<input type="submit" class="btn btn-primary form-control"
						value="회원가입">
				</form>
			</div>
		</div>
	</div>
	<div align="center">
		<a id="custom-login-btn" href="javascript:loginWithKakao()">
			<img src="//mud-kage.kakao.com/14/dn/btqbjxsO6vP/KPiGpdnsubSq3a0PHEGUK1/o.jpg" width="300"/>
		</a>
		<script type='text/javascript'>
	  //<![CDATA[
	    // 사용할 앱의 JavaScript 키를 설정해 주세요.
	    Kakao.init('8e3eb82c47c88fab14620e765dae7e97');
	    function loginWithKakao() {
	      // 로그인 창을 띄웁니다.
	      Kakao.Auth.login({
	        success: function(authObj) {
	          alert(JSON.stringify(authObj));
	        },
	        fail: function(err) {
	          alert(JSON.stringify(err));
	        }
	      });
	    };
	  	//]]>
		</script>
	</div>


	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>