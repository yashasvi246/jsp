<%@page import="java.sql.*"%>
<html>
<head>

<title>Show All CAtegories</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include><br><br>
<%
Class.forName("com.mysql.jdbc.Driver");
System.out.println("Driver loaded");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/yashasvi", "root", "root");
System.out.println("connected");
PreparedStatement pst=con.prepareStatement("select * from category_table ");
ResultSet rs=pst.executeQuery();
if(rs.next()){
	String id,nm,des,qnty,price;
	%>
	
	<table border='2' width='600' >
	<th>Category ID</th><th>Category Name</th><th>Category Description</th>
	<% 
	do
	{
	 id=rs.getString(1);
	 nm=rs.getString(2);
	
	 des=rs.getString(3);
	%>
	<tr><td><%=id %></td><td><%=nm %></td><td><%=des %></td></tr>
	<% }while(rs.next());
}
else
{

%>
<h1>No Data Found</h1>

<%} 
con.close();
%>

</body>
</html>