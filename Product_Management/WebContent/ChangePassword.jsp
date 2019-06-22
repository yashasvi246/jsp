<%@page import="java.sql.*"%>
<html>
<head>
<title>Change password</title>
</head>
<body>

<%
String id=(String)session.getAttribute("aid");
Class.forName("com.mysql.jdbc.Driver");
System.out.println("Driver loaded");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/yashasvi", "root", "root");
System.out.println("connected");
PreparedStatement pst=con.prepareStatement("select * from Admin_table where login_id=?");
pst.setString(1, id);

ResultSet rs=pst.executeQuery();
			if(rs.next()){
				%>
				
				<form action='UpdatePassword.jsp' method='post' >
				<table border='1' width='200'>
				<% 
				String pwd=rs.getString(2);
				 %>
				<tr><th>Login Id</th><td><input  type="hidden "name='aid' value=<%=id %>></td></tr>
<tr><th>New Password</th><td><input type='text' name='npwd' value=<%=pwd %>></td></tr>			


				</table>
		
			<button type='submit'>Update</button>
			
			<%}
			else
			{
			request.setAttribute("error", "Invalid Userid/Password");
			%>
			<jsp:forward page="Login.jsp"></jsp:forward>
			<%} 
			con.close();
			%>

			
</form>
</body>
</html>