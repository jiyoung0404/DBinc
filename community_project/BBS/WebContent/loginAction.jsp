<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="userProfile.UserDAO" %> <!-- userDAO의 클래스 가져옴 -->
<%@ page import="java.io.PrintWriter" %> <!-- 자바 클래스 사용 -->
<% request.setCharacterEncoding("UTF-8"); %>

<!-- 한명의 회원정보를 담는 user클래스를 자바 빈즈로 사용 / scope:페이지 현재의 페이지에서만 사용-->
<jsp:useBean id="user" class="userProfile.User" scope="page" />
<jsp:setProperty name="user" property="LEVEL" />


<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<%
		UserDAO userDAO = new UserDAO(); //인스턴스생성
		int result = userDAO.login(user.getUserEmail(), user.getUserPassword());
		//로그인 성공

		if(result == 1) {
			session.setAttribute("LEVEL", userDAO.getGrade(user.getUserEmail()));
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("<location.href = 'main.jsp'");
			script.println("</script>");
		}

		//로그인 실패
		else if(result == 0) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('비밀번호가 틀립니다.')");
			script.println("history.back()");
			script.println("</script>");
		}

		// ID가 존재하지 않는 경우에 발생합니다.
		else if(result == -1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('존재하지 않는 이메일(ID)입니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
		// DB연동 오류가 발생하는 경우에 생성됩니다.
		else if(result == -2){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('DB오류가 발생했습니다.')");
			script.println("history.back()");
			script.println("</script>");
		}		
	%>
</body>
</html>



