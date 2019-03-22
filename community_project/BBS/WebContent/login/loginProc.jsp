<%@ page contentType="text/html; charset=UTF-8" %>

<%
	final String ID = "DBInC";
	final String PASSWD = "db6789";
	
	
	String id = "";
	String passwd = "";
	
	if(request.getMethod().equals("POST")) {
		id = request.getParameter("id");
		passwd = request.getParameter("passwd");
		boolean checkLogin = false;
		
		if(id != null && passwd != null) {
			if(id.equals(ID) && passwd.equals(PASSWD)) {
				checkLogin = true;
			}
		}
		
		if(checkLogin) {
%>
			<jsp:forward page="main.jsp" />
<%			
		}
		else {
%>
			<jsp:forward page="login.jsp" />
<%
		}
	}
	else {	
%>
		<jsp:forward page="login.jsp" />		
<%
	}
%>		