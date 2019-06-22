<%@page import="java.sql.*"%>
<%
String aid=request.getParameter("aid");		
String pwd=request.getParameter("pwd");
Class.forName("com.mysql.jdbc.Driver");
System.out.println("Driver loaded");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/yashasvi", "root", "root");
System.out.println("connected");
PreparedStatement pst=con.prepareStatement("select name from Admin_table where login_id=? and password=?");
pst.setString(1, aid);
pst.setString(2, pwd);
ResultSet rs=pst.executeQuery();
if(rs.next()){
	String nm=rs.getString("name");
	session.setAttribute("aname", nm);
	session.setAttribute("aid",aid);
	response.sendRedirect("home.jsp");
}
else
{
request.setAttribute("error", "Invalid Userid/Password");
%>
<jsp:forward page="Login.jsp"></jsp:forward>
<%} 
con.close();
%>
