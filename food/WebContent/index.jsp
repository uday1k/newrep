<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script src="boostrap/js/bootstrap.min.js"></script>


<style>
.bg
{
background:url("images/bg.jfif");
opacity:0.9
}
#lid
{

  text-align: center;
  margin-top: 50px;
background:#ffa07a;
opacity:0.9;
}
.jumbotron{
background-color: orange;
}
.navbar a:hover {
  background-color: DodgerBlue;
}
.nav-link {color: #FFFF00;}
.nav-link:hover {color: #0f0;}

#fbid
{
}
#h2css
{
font-size:50px;
  text-align: center;
  margin: 50px 50px;
color:#0000ff;
opacity:0.9;
background-color:#ffa07a;
}
</style>
<script type="text/javascript">
function TestsFunction() {
    var T = document.getElementById("TestsDiv"),
        displayValue = "";
    if (T.style.display == "")
        displayValue = "none";

    T.style.display = displayValue;
}

</script>

    <title>Home page!</title>
  </head>
 
  <body class="bg">
  
  
  
  
<nav class="navbar navbar-expand-lg navbar-info bg-primary">
  <a href="index.jsp" class="navbar-brand" ><img src="images/foodwastelogo.png" width="30" height="30" alt="image missed"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="registerFile.jsp">Register as volunteer/user</a>
      </li>
      <li class="nav-item">
      <a class="nav-link" href="javascript:TestsFunction()">Login</a>
      
      <!--    <a class="nav-link" href="login.jsp">Login</a>  -->
      </li>
      <li class="nav-item">
        <a class="nav-link" href="admin.jsp">Admin</a>
      </li>
        
     
    </ul>
  </div>
</nav>




<div class="container py-1" id="TestsDiv" style="display:none">
    <form class="float-right  form-inline" action="loginAction">
  <div class="form-group  pr-2">
  
  <!-- <label for="exampleInputEmail1">Email address</label>    -->  
    <input type="email" class="form-control" id="exampleInputEmail1" name="exampleInputEmail" aria-describedby="emailHelp" placeholder="Enter email">
   <!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
   --></div>
  <div class="form-group pr-2">
 <!-- <label for="exampleInputPassword1">Password</label>   -->   
    <input type="password" class="form-control" id="exampleInputPassword1" name="exampleInputPassword" placeholder="Password" required>
  </div>
  <!-- 
  <div class="form-group form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
   -->
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>






<div></div>
<div class="container pt-5 ">
  <div class="jumbotron">
    <h1>FOOD WASTE MANAGEMENT SYSTEM</h1>
    <p>we are committed to your well-being
and efforts in our mutual mission to get surplus food to those in need.</p>
  </div>
</div>

<h2 id="h2css"><i>Let Nothing Be Wasted...</i></h2>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <!--  
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
 -->
 

  <div class="container">
  <img src="images/kyaimage1.jpg" class="img-thumbnail w-30" alt="Cinque Terre" width="304" height="236"> 
  <img src="images/kyaimage2.jpg" class="img-thumbnail w-30" alt="Cinque Terre" width="304" height="236"> 
  <img src="images/kyaimage3.jpg" class="img-thumbnail w-30" alt="Cinque Terre" width="304" height="236"> 
</div>

 

<div class="container">
<div id="lid">
  <div class="row">
    <div class="col-sm">
      <strong>About us</strong><br>
      Registered as Hunger Heroes.<br>
Under Indian Society Registration Act XXI, 1860<br>
All donations are tax-exempted as eligible <br>under section 80G of the the Income Tax Act, 1961.<br>
      
    </div>
    <div class="col-sm">
      <strong>Contact us</strong><br>
      email@gmail.com<br>
      9578952233<br>
      hyderabad<br>
      <!--Facebook-->
<button id="fbid" type="button" class="btn btn-sm btn-fb"><i class="fab fa-facebook-f pr-1"></i> Facebook</button>

<br>
      strength of 500<br>
      strength of 500<br>
    </div>
    <div class="col-sm">
      <strong>Support us</strong><br>
      Your contribution will go a long way<br>
       in ensuring a reliable supply of meals<br>
        for our daily wager community<br>
        during the current lockdowns in the region.
    </div>
  </div>
</div>
</div>


<!-- Footer -->
<footer class="page-footer font-small blue">

  <!-- Copyright -->
  <div style="background-color:#FAF0E6;" class="footer-copyright text-center py-3">© 2020 Copyright:
    <a href=""> foodwastagemanagementsystem.com</a>
  </div>
  <!-- Copyright -->

</footer>
<!-- Footer -->

 
  </body>
</html>