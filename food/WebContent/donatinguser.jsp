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
#ulidg
{
color:green;
}
#ulidr
{
color:red;
}
</style>
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
		
		PreparedStatement stmt=con.prepareStatement("select * from relatfoodtable a join foodtable b on a.Email=b.Email where b.Email=? and Password=?");  
		stmt.setString(1,emaildd);  
		stmt.setString(2,pwddd);  
		
		
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
      <th scope="col">latest updated DateTime of request</th>
      <th scope="col">Request</th>
    </tr>
  </thead>
  
  <% do{%>
  
  <tbody>
    <tr>
      <th scope="row">#</th>
      <td><%=result.getString("Name")%></td>
      <td><%=result.getString("Phone")%></td>
	  <td><%=result.getString("Email")%></td>
	  <td><%=result.getString("Time")%></td>
	  <td><%=result.getString("CurrentStatus")%></td>
	  </tr>
    </tbody>
    <% }
  while(result.next()); %>
</table>



<p>

These guidelines are for food DONORS. By following these guidelines, food DONORS will be able to safely prepare, handle, and provide food that can be accepted by DONATED FOOD DISTRIBUTING ORGANIZATIONS. Many individuals and groups (DONORS) provide food to organizations (DONATED FOOD DISTRIBUTING ORGANIZATIONS) that then serve or distribute the food to needy individuals. The distributing organizations must comply with state food safety rules and have limitations on the types and sources of food they can accept. Donors should follow these guidelines to help assure food provided to the needy is safe.
<h5>Definitions</h5>
<ol>
<li>DONOR means a person, corporation, association, or other organization that donates food to a DONATED FOOD DISTRIBUTING ORGANIZATION.
</li>
<li>DONATED FOOD DISTRIBUTING ORGANIZATION means a charitable nonprofit organization under section 501c of the federal Internal Revenue Code that distributes food free of charge to the public.
</li>
<li>
DONOR KITCHEN means a kitchen that is used by a DONOR to handle, store, or prepare food for donation to needy persons through a DONATED FOOD DISTRIBUTING ORGANIZATION and which is not a residential kitchen in a private home.
</li>
</ol>

<h5><b>Foods Suitable for Donation</b></h5>
<ul id="ulidg">
<li>
Home-Prepared Foods
DONATED FOOD DISTRIBUTING ORGANIZATIONS are not allowed to accept or serve most types of homeprepared foods. However, homemade baked goods that do not need refrigeration to remain safe (such as cookies, cakes, fruit pies, and breads) may be received from DONORS.
</li>
<li>
Commercially Packaged Foods Not Needing Refrigeration
The donation of commercially canned, boxed, and otherwise packaged foods is encouraged.
</li>
<li>
Fresh Produce Donations
Food donations may include fresh produce, including home-grown fruits and vegetables. Fresh produce should be protected from contamination and receive final preparation, such as washing and cutting, in a DONOR KITCHEN or licensed kitchen.
</li>
<li>
Food Prepared in a DONOR KITCHEN
Except for baked goods (such as bread, cookies, and fruit pies), DONATED FOOD DISTRIBUTING ORGANIZATIONS may not accept foods prepared in a home kitchen. Instead, foods for donation should be prepared in either a DONOR KITCHEN or a commercial food establishment, such as a restaurant.
</li>
<li>
A DONOR KITCHEN is a publicly available kitchen in a faith-based organization, community center, or other site. The DONOR KITCHEN does not need to have a health permit, but must have basic facilities such as adequate handwashing, dishwashing, refrigeration, and cooking equipment. It must have a safe water supply, be protected from weather and animals, and be cleaned before food preparation starts.
</li>
<li>
Uninspected Meat Donations
Meat from game animals may be donated to a charitable organization if approved by the local health agency and if donated by a law enforcement officer or a person with a valid hunting license issued by the Washington Department of Fish and Wildlife. A meat cutter approved by the local health agency must process the game meat. The meat needs to be labeled: UNINSPECTED WILD GAME MEAT, THOROUGHLY COOK TO 165°F
INTERNAL TEMPERATURE.
</li>
<li>
Livestock, poultry, or rabbits may be donated alive to a charitable organization if raised by a member of an approved youth club, such as 4H. A meat cutter approved by the local health authority must process the livestock, poultry, or rabbit meat. The meat needs to be labeled: UNINSPECTED MEAT, THOROUGHLY COOK TO 165°F INTERNAL TEMPERATURE.
</li>
<li>
Food Donation by Licensed Food Establishments
Licensed food establishments are encouraged to donate surplus foods to DONATED FOOD DISTRIBUTING ORGANIZATIONS. Because licensed food establishments have commercial-grade equipment, unlike many DONOR KITCHENS, these may safely include foods that have gone through typical multiple food preparation steps and handled with the same consideration for safety as the food sold to customers.
</li>
<li>
Perishable foods past the original manufacturers sell by (or best if used by) date are suitable for donation, but not foods past a use by date. Other items not suitable for donation include foods that have been temperature abused; foods that have been served to a customers table; spoiled foods; foods exposed to potential contamination by severe package damage; and sharply dented or rusty cans.
</li>
<li>
Food Donation by Food Processors
Food processors are encouraged to donate foods that may not meet their specifications for reasons that do not affect food safety, such as package printing errors. Each food package may lack complete labeling required for commercial distribution, as long as the charitable distributing organization is given enough information to mark each container with the common name of the food. At least one accurate, complete label must be provided with each master carton.
</li>
<li>
Distressed Foods
Foods that have been stored for a long time, gone through a fire, or suffered another disaster may still be safe. Contact the food safety program of the local health agency to see if these foods can be safely donated under the specific circumstances involved.
</li>

</ul>
<i style="color:blue;">
Important Note: Before making your donation, contact the DONATED FOOD DISTRIBUTING ORGANIZATION to make sure they will accept the type of food you intend to donate.
</i>
<br>
<b>
Foods Unsuitable for Donation
Certain foods are not suitable for donation because of safety concerns. These foods include:
</b>
<ul id="ulidr">
<li>Home canned, vacuum-packed or pickled foods.</li>
<li>Foods in soiled containers.</li>
<li>Perishable foods past a use by date, unless frozen.</li>
<li>Foods in sharply dented or rusty cans.</li>
<li>Foods in opened or torn containers exposing the food to potential contamination.</li>
<li>Unpasteurized milk.</li>
<li>Foods with an off odor.</li>
<li>Foods prepared, cooked, cooled, or reheated at home (except for baked goods).</li>
</ul>
</p>

<% 
		}
	}
		
	
	catch(Exception e){ System.out.println("2"+e);
		response.sendRedirect("error.jsp");
		}
	
	%>
</html>
