<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script> 
<title>donar data here</title>
</head>

<%

String emaildd=(String)session.getAttribute("saemail");
String pwddd=(String)session.getAttribute("sapass");



	
	%>
	<body>
	
	
	<a class='btn btn-success' href='donaraddress.jsp' role='button'>Send Request to Donate</a>
	<a class='btn btn-warning' href='donatinguser.jsp' role='button'>my requests</a>
	<a class='btn btn-secondary' href='logoutServlet' role='button'>Logout</a>
	
	
	
	<h4>Safe Food Handling Practices</h4>
Training
<br>
Although training is not a requirement for preparing food donations, food safety classes explain the food safety precautions required with feeding large groups. Many local health agencies, WSU Cooperative Extension offices, and food industry associations give short classes on food safety.
<br>
Personnel
<br>
A knowledgeable group leader with food safety training and a Washington State Food Worker Card, if possible, should be selected to organize the food preparation efforts. Children under 10 years old should only handle wrapped foods, raw produce, and raw dry food staples to limit the potential for food safety errors. Food workers who are ill should not handle or prepare food.
<br>
Handwashing
<br>
Proper handwashing facilities and supplies (soap, warm running water, and paper towels) must be convenient for all food handlers.
<br>
All food handlers should wash their hands before beginning work, and after:
<br>

Food safety gloves are intended to protect the food from hand contact rather than to protect the wearer. Gloves need to be changed when they are torn or after tasks where they become soiled. A cut on the hand
should be covered by a clean bandage and a glove.
<br>
Food Storage
<ul>

<li>Dry goods, canned food, and fresh produce may be stored in a private home away from pests, pets, and household chemicals. Commercially frozen food can be stored in a home-style freezer, as long as the food remains frozen hard. Other foods should be stored in a DONOR KITCHEN, rather than in a home.
</li>
<li>
Packaged food should be donated in its original, unopened packaging with ingredient labels. If bulk food staples such as flour, sugar, dry beans, and dry grains are repackaged for donation, the common name of the food item
should be written on each container.
</li>
</ul>
Food Transportation
<ul>

<li>
Temperature control and prevention of cross contamination are important food safety measures while transporting food. Potentially hazardous foods that need to be kept hot or cold need to be transported quickly in insulated containers that protect against contamination. Whenever possible, prepare and cook the food at the feeding location to reduce the food safety risk.
</li>
</ul>


<ul>
Potentially Hazardous Foods
<li>Certain foods, called potentially hazardous foods, let bacteria grow quickly. It is important to keep these foods at safe temperatures to prevent bacteria from growing.
</li>
<li>
Potentially hazardous foods include items such as meats, poultry, fish, eggs, dairy products, all cooked vegetables (including cooked beans, rice, and potatoes), seed sprouts, sliced melons, and garlic and other fresh herbs in oil mixtures.
</li>
</ul>
	
	
	
	
	
	</body>
	
</html>