<html>
<head>

<title>Logout</title>
</head>
<body>
<%
HttpSession Session=request.getSession();	
String aid=(String) Session.getAttribute("aname");

if(aid==null){
	response.sendRedirect("invalidUser.html");
	return;
}

session.invalidate();

response.sendRedirect("Logout_success.jsp");
%>
</body>
</html>