<%@page import="java.sql.*"%>
<html>
<body>
<%
int nid=Integer.parseInt(request.getParameter("nid"));
String nnm=request.getParameter("nnm");
String ncdes=request.getParameter("ncdes");
Class.forName("com.mysql.jdbc.Driver");
System.out.println("Driver loaded");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/yashasvi", "root", "root");
System.out.println("connected");
PreparedStatement pst=con.prepareStatement("insert into Category_table values(?,?,?)");
pst.setInt(1, nid);
	pst.setString(2, nnm);
	pst.setString(3, ncdes);
	int r = pst.executeUpdate();
	if (r > 0) {

		response.sendRedirect("ShowAll.jsp");
	} else {
%>
<h1>Invalid Entries</h1>
<%} 
con.close();
%>


</body>
</html>