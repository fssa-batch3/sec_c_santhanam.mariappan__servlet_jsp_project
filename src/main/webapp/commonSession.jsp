

<%
String LoggesdInUseremail = (String) request.getSession(false).getAttribute("User");
if (LoggesdInUseremail == null) {
	response.sendRedirect("index.jsp");
}
%>