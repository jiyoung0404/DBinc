<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>

<html>
<head>
	<title>login.html</title>
	<meta charset="UTF-8" />
	<script>
	/*
		폼에서 사용자 입력이 유효한 경우에만 로그인 요청이 나갈수 있도록 제한한다.
	*/
	
	function submitHandler(event) {
		var message = document.querySelector('#message');
		var id = document.querySelector('#id');
		var passwd = document.querySelector('#passwd');
		var checkLogin = false;
		
		if(id.value && passwd.value) {
			if(id.value.length >= 3 && passwd.value.length >= 3) {
				checkLogin = true;
			}
			else {
				message.innerHTML = '올바른 아이디와 패스워드를 입력하세요.';
			}
		}
		else {
			message.innerHTML = '아이디와 패스워드는 반드시 입력하셔야 합니다.';
		}
		
		if(!checkLogin) {
			event.preventDefault();
		}
	}
	
	function init() {
		var loginForm = document.querySelector('#loginForm');
		loginForm.addEventListener('submit', submitHandler);
	}
	
	window.addEventListener('load', init);
	</script>
</head>
<body>

	<h1>로그인 페이지</h1>
	<hr />
	
	<form id="loginForm" action="loginProc.jsp" method="POST">
		<label for="id">아이디</label>
		<input type="text" name="id" id="id" size="15" />
		
		<label for="passwd">패스워드</label>
		<input type="password" name="passwd" id="passwd" size="15" />
		
		<input type="submit" value="로그인" />
	</form>
	
	<hr />
	<div id="message"></div>

</body>
</html>





