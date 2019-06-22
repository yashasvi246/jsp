		<%@page import="java.sql.*"%>
		<% String aid=request.getParameter("aid");
		String nm=request.getParameter("nm");
		String pwd=request.getParameter("pwd");
		Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/yashasvi","root","root");
			PreparedStatement pst=con.prepareStatement("insert into Admin_table values(?,?,?)");
			pst.setString(1, aid);
			pst.setString(2, pwd);
			pst.setString(3, nm);
		int r=pst.executeUpdate();
			if(r>0){

				%>
				<jsp:forward page="reg_success.html"></jsp:forward>
				<%
			}	
			else
			%>
				<h2>Sorry ! Try again</h2>
			<%
			
			con.close();
	%>