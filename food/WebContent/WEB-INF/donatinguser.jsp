<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script src="boostrap/js/bootstrap.min.js"></script>
</head>
<title>donar here</title>
	<%
	try{  
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection(  
		"jdbc:mysql://localhost:3307/dbjdbc","root","");  
		
		String emaildd=(String)session.getAttribute("saemail");
		String pwddd=(String)session.getAttribute("sapass");
		
		PreparedStatement stmt=con.prepareStatement("select * from foodtable where Email=? and Password=?");  
		stmt.setString(1,emaildd);  
		stmt.setString(2,pwddd);  
		
		
		ResultSet result = stmt.executeQuery();
		
		
		if(result.next()){
			
			
			
		   

		

	%>
	
<table class="table">
  <thead>
    <tr>
      <th scope="col">Details</th>
      <th scope="col">Name</th>
      <th scope="col">Phone</th>
      <th scope="col">Email</th>
      <th scope="col">Status</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">about</th>
      <td><%=result.getString("Name")%></td>
      <td><%=result.getString("Phone")%></td>
	  <td><%=result.getString("Email")%></td>
	  <td><%=result.getString("Status")%></td>

    </tr>
    </tbody>
</table>


<% 
		}
		else
		{
			
			response.sendRedirect("error.jsp");
			
			//System.out.println("inserted failed");
			

		}
		
	}catch(Exception e){ System.out.println("2"+e);
	response.sendRedirect("error.jsp");
	}
	
	
	%>
</html>
