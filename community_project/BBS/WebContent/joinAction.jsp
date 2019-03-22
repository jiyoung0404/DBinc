<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="userProfile.UserDAO" %> <!-- userDAO의 클래스 가져옴 -->
<%@ page import="java.io.PrintWriter" %> <!-- 자바 클래스 사용 -->
<%
	request.setCharacterEncoding("UTF-8");	// post 방식에서 한글이 꺠지지 않기 위해서 사용한다.
%>

<!-- 한명의 회원정보를 담는 user클래스를 자바 빈즈로 사용 / scope:페이지 현재의 페이지에서만 사용-->
<jsp:useBean id="user" class="userProfile.User" scope="page" />
<jsp:setProperty name="user" property="userEmail" />
<jsp:setProperty name="user" property="userPassword" /> 
<jsp:setProperty name="user" property="userName" />
<jsp:setProperty name="user" property="userGender" />
<jsp:setProperty name="user" property="userPhone" />
<jsp:setProperty name="user" property="userBirth" />

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>

<body>
	<%	// 하나라도 입력되지 않은것이 있으면 발생합니다.
		if (user.getUserEmail() == null || user.getUserPassword() == null || user.getUserName() == null
			|| user.getUserGender() == null  || user.getUserPhone() == null || user.getUserBirth() == null) {
				PrintWriter script = response.getWriter();	// Java에서 웹으로 데이터를 출력하기 위해서 사용합니다.
				script.println("<script>");					// printerWriter는 new를 사용하지 않고 사용이 가능합니다.
				script.println("alert('입력이 안 된 사항이 있습니다.')");
				script.println("history.back()");			// 뒷 페이지로 돌아가줍니다.
				script.println("</script>");
		}
	
		// 미입력 사항이 없는 경우에 일어납니다.
		else {
			UserDAO userDAO = new UserDAO(); //인스턴스생성
			int result = userDAO.join(user);				

			if(result == -1){ // ID가 기본키고, 중복시에는 오류가 발생합니다.
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('이미 존재하는 아이디 입니다.')");	// 이미 ID가 존재한다고 경고문을 띄웁니다.
				script.println("history.back()");
				script.println("</script>");
			}

			//가입성공

			else {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("location.href = 'main.jsp'");
				script.println("</script>");
			}
		}
	%>
</body>
</html>