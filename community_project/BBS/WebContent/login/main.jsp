<%@ page contentType="text/html; charset=UTF-8" %>

<%
	// h3 태그에 현재 로그인한 사용자의 아이디를 함께 출력하여라.
%>

<!DOCTYPE html>

<html>
<head>
	<title>main.jsp</title>
	<meta charset="UTF-8">
</head>

<body>

	<h1>메인 페이지</h1>
	<hr />
	
	<h3><%= request.getParameter("id") %>님의 방문을 환영합니다.</h3>

</body>
</html>