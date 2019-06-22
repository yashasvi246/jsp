<html>
<head>
<title>Admin login</title>
</head>
<link rel="stylesheet" type="text/css" href="view.css">
<body style="background-color:#A03">
<h1>Admin Login</h1>
<%
String error =(String)request.getAttribute("error");
if(error!=null)
{
%>
<p><%=error%></p>
<%} %>
<form action="dologin.jsp" method="post" style="text-align:center">
<b>

</b>
<hr>
Login id <input type="text" name="aid" placeholder="Enter Your Id here"><br><br>
password <input type="password"name="pwd" placeholder="Enter Your Password Here"><br><br>
<button type="submit">Login</button>
<a href="Registration.jsp">Sign Up</a>
</form>

</body>
</html>
