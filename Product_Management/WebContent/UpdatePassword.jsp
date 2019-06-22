<%@page import="java.sql.*"%>
<html>
<head>
<title>Update Password </title>
</head>
<body>
<% String aid=request.getParameter("aid");
String pwd=request.getParameter("npwd");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/yashasvi","root","root");
PreparedStatement pst=con.prepareStatement("update Admin_table set password=? where login_id=?");

pst.setString(1, pwd);
pst.setString(2,aid);
int r=pst.executeUpdate();
if(r>0){
	out.print("<h2>Update Successfully</h2>");			
	
}	else
	out.print("<h2>Sorry ! Invalid Data</h2>");
out.print("<h2><a href='Login.jsp'>Login Again</a>");
con.close();
%>
</body>
</html>