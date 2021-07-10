<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script src="boostrap/js/bootstrap.min.js"></script>
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
<title>login here</title>
</head>
<body>

    

<form class="form-inline" action="loginAction">
  <div class="form-group">
   <!-- <label for="exampleInputEmail1">Email address</label>  -->
     <input type="email" class="form-control" id="exampleInputEmail1" name="exampleInputEmail" aria-describedby="emailHelp" placeholder="Enter email">  
    <!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
  </div>
  <div class="form-group">
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

</body>
</html>