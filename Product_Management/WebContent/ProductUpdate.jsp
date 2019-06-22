<%@page import="java.sql.*"%>
<html>
<body>
<%
double nprice=Double.parseDouble(request.getParameter("nprice"));
String nnm=request.getParameter("nnm");
int nqnty=Integer.parseInt(request.getParameter("nqnty"));
String npdes=request.getParameter("npdes");
int ncid=Integer.parseInt(request.getParameter("ncid"));
Class.forName("com.mysql.jdbc.Driver");
System.out.println("Driver loaded");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/yashasvi", "root", "root");
System.out.println("connected");
PreparedStatement pst=con.prepareStatement("insert into Product_table(pname,price,quantity,category_id,description) values(?,?,?,?,?)");
	
	pst.setString(1, nnm);
	pst.setDouble(2, nprice);
	pst.setInt(3, nqnty);
	pst.setInt(4, ncid);
	pst.setString(5,npdes);
	int r = pst.executeUpdate();
	if (r > 0) {

	%>
	<h1>Product Added Succesfully<h1>
	<%
	} else {
%>
<h1>Invalid Entries</h1>
<%} 
con.close();
%>


</body>
</html>