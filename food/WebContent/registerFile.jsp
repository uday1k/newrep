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


<title>Register here</title>
</head>
<body>


<form action="dataStoring">


  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputName4">Name</label>
      <input type="text" class="form-control" id="inputName4" name="inputName" required>
    </div>
    <div class="form-group col-md-6">
      <label for="inputPhone4">Phone</label>
      <input type="text" class="form-control" id="inputPhone4" name="inputPhone" required>
    </div>
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Email</label>
      <input type="email" class="form-control" id="inputEmail4" name="inputEmail" required>
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Password</label>
      <input type="password" class="form-control" id="inputPassword4" name="inputPassword" required>
    </div>
  </div>
  <div class="form-group">
    <label for="inputAddress">Address</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St" name="inputAddress1" required>
  </div>
  <div class="form-group">
    <label for="inputAddress2">Address 2</label>
    <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor" name="inputAddress2">
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">City</label>
      <input type="text" class="form-control" id="inputCity" name="inputCity" required>
    </div>
    <div class="form-group col-md-4">
      <label for="inputState">State</label>
      <select id="inputState" class="form-control" name="inputState">
        <option selected>Telangana</option>
        <option>AP</option>
        <option>MP</option>
        <option>Gujarat</option>
        <option>Maharashtra</option>
      </select>
    </div>
    <div class="form-group col-md-2">
      <label for="inputZip">Zip</label>
      <input type="text" class="form-control" id="inputZip" name="inputZip" required>
    </div>
  </div>
  <div class="form-group">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" id="gridCheck" name="gridCheck" required>
      <label class="form-check-label" for="gridCheck">
        Check me out
      </label>
    </div>
  </div>
  
  
  <!--  radio buttons-->
  <div class="form-group">
<!-- Default unchecked -->
<div class="custom-control custom-radio">
  <input type="radio" class="custom-control-input" id="defaultUnchecked" name="defaultExampleRadios" value="volunteer">
  <label class="custom-control-label" for="defaultUnchecked">Volunteer</label>
</div>

<!-- Default checked -->
<div class="custom-control custom-radio">
  <input type="radio" class="custom-control-input" id="defaultChecked" name="defaultExampleRadios" value="donar" checked>
  <label class="custom-control-label" for="defaultChecked">Donar</label>
</div>
  </div>
  
  
  
  <button type="submit" class="btn btn-primary">Sign in</button>
  </form>



</body>
</html>