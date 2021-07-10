<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<style>
body::after {
  content: "";
  background: url("images/bg.jfif");
  opacity: 0.3;
  top: 0;
  left: 0;
  bottom: 0;
  right: 0;
  position: absolute;
  z-index: -1;   
}
</style>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script src="boostrap/js/bootstrap.min.js"></script>
</head>
<title>volunteer here</title>
	<%
	try{  
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection(  
		"jdbc:mysql://localhost:3307/dbjdbc","root","");  
		
		String emaildd=(String)session.getAttribute("saemail");
		String pwddd=(String)session.getAttribute("sapass");
		
		PreparedStatement stmt=con.prepareStatement("select * from relatfoodtable a join foodtable b on a.Email=b.Email where CurrentStatus!='completed'");  
		//where Email=? and Password=?
		//stmt.setString(1,emaildd);  
		//stmt.setString(2,pwddd);  
		
		
		ResultSet result = stmt.executeQuery();
		
		if(!result.next())
		{
		%>  <h1>No Records Found</h1>   <% 
		}
		else
		{
			
		%>
		
<table class="table">
  <thead>
    <tr>
      <th scope="col">Details</th>
      <th scope="col">Name</th>
      <th scope="col">Phone</th>
      <th scope="col">Email</th>
      <th scope="col">OrderTime</th>
      <th scope="col">Status</th>
      <th scope="col">StatusChangedBy</th>
      <th scope="col">Update to</th>
    </tr>
  </thead>
	<% 
		do{
	%>
	
  <tbody>
    <tr>
      <th scope="row">about</th>
      <td><%=result.getString("Name")%></td>
      <td><%=result.getString("Phone")%></td>
	  <td><%=result.getString("Email")%></td>
	  <td><%=result.getString("Time")%></td>
	  <td><%=result.getString("CurrentStatus")%></td>
	  <td><%=result.getString("StatusChangedBy")%></td>
	  <td><a class='btn btn-secondary' href="updateStatus?email=<%=result.getString("Email")%>&change=accept&changedby=<%=emaildd %>&ts=<%=result.getString("Time")%>">ACCEPT</a>
	  <a class='btn btn-secondary' href="updateStatus?email=<%=result.getString("Email")%>&change=reject&changedby=<%=emaildd %>&ts=<%=result.getString("Time")%>">REJECT</a>
	  <a class='btn btn-secondary' href="updateStatus?email=<%=result.getString("Email")%>&change=complete&changedby=<%=emaildd %>&ts=<%=result.getString("Time")%>">COMPLETED</a></td>
    </tr>
    </tbody>
    <% }while(result.next());%>
</table>


<% 
		}
		
		
	}catch(Exception e){ System.out.println("2"+e);
	response.sendRedirect("error.jsp");
	}
	
	
	%>
</html>
