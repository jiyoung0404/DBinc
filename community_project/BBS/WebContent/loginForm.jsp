 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv = "Content-Type" content = "text/html; charset=UTF-8">		<!-- 뷰포트 -->
	<meta name = "viewport" content = "width=device-width" initial-scale = "1">	<!-- 스타일시트 참조  -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<title>로그인 | U&I</title>
	<%@ include file="header/header_head.jsp" %>
</head>

<body>
	<%@ include file = "header/header_body.jsp" %>

	<!-- Login form -->
	
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">  <!-- 점보트론 -->
			
				<form method="post" action="loginAction.jsp">	<!-- 로그인 정보를 숨기면서 전송post -->
					<h3 style="text-align: center;"> Login </h3>
					<div class="form-group">
						<input type="text" class="form-control"
							placeholder="Email(ID)" name="userEmail" maxlength="30">
					</div>
					
					<div class="form-group">
						<input type="password" class="form-control"
							placeholder="비밀번호" name="userPassword" maxlength="20">
					</div>
					
					<input type="submit" class="btn btn-primary form-control" value="로그인">
				</form>
			</div>
		</div>
	</div>
	
	<!-- 애니매이션 담당 JQUERY -->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script> 
	<!-- 부트스트랩 JS  -->
	<script src="js/bootstrap.js"></script>
</body>
</html>