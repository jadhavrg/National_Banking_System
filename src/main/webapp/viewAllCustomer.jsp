<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Viewallcustomer page</title>
<style type="text/css">
	body
	{
		background-image: url("https://tilecorp.com.au/wp-content/uploads/2017/01/Login-Background.jpg");
		text-align: center;
	}
</style>
</head>
<body>
		<%
			Class.forName("com.mysql.cj.jdbc.Driver") ;
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/national_bank", "root", "MySQL@9566") ;
			Statement st = con.createStatement() ;
			ResultSet rs = st.executeQuery("select * from customer") ;
		%>
		
		<div class="t-div">
			<table align="center" cellpadding="20px" border="2">
			<th> Id </th>
			<th> Name </th>
			<th> Account Number </th>
			<th> Pincode </th>
			<th> Balance </th>
			
		
		<% while(rs.next()) { %>
		
				<tr> 
					<td> <%=rs.getInt(1)%> </td>
					<td> <%=rs.getString(2)%> </td>
					<td> <%=rs.getLong(3)%> </td>
					<td> <%=rs.getInt(4)%> </td>
					<td> <%=rs.getDouble(5) %> </td>
				</tr>
		
		<% } %>
		
		</table>
		</div>
</body>
</html>