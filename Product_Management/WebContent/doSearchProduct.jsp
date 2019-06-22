<%@page import="java.sql.*"%>
<% String pname=request.getParameter("pname");
Class.forName("com.mysql.jdbc.Driver");
System.out.println("Driver loaded");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/yashasvi", "root", "root");
System.out.println("connected");
PreparedStatement pst=con.prepareStatement("select * from product_table where pname like ?");
pst.setString(1,pname);
ResultSet rs=pst.executeQuery();
if (rs.next())
	{int pid,qnty ,cid;
	String name,description;
	double price;
%>
	<table border='2' width='600' >
	<th>Product ID</th><th>Product Name</th><th>Product Price</th><th>Product Quantity</th><th>Category Id</th><th>Product Description</th>
	<% 
	
		do
		{
			pid=rs.getInt(1);
			 name=rs.getString(2);
			 price=rs.getDouble(3);
			 qnty=rs.getInt(4);
			 cid=rs.getInt(5);
			 
			 description=rs.getString(6);
		 
			
			 %>
				<tr><td><%=pid%></td><td><%=name %></td><td><%=price %></td><td><%=qnty %></td><td><%=cid %></td><td><%=description %></td></tr>
				<%
		}while(rs.next());
		
	}
else
{
	

%>
<h1>No Data Found</h1>

<%
}
con.close();
%>

</body>
</html>