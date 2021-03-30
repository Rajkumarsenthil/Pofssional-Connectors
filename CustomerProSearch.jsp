<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*" %>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>User Booking</title>
    <link href="homestyle.css" rel="stylesheet">
    <script type="text/javascript" src="Searchresponse.js"></script>    
  	 <link href="ex.css" rel="stylesheet">
	   <script src="pop.js"></script>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <p> <img src="business_group_127px.png" width="39" height="39" alt=""/><a class="navbar-brand" href="#">&nbsp;</a></p>
      <p>&nbsp;</p>
<p>&nbsp;</p>
      <p><a class="navbar-brand" href="#">&nbsp;</a> </p>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent" >
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active"> <a class="nav-link" href="Customerhome.jsp">Home <span class="sr-only">(current)</span></a> </li>
          <li class="nav-item"> <a class="nav-link" href="#">Edit</a> </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="CustomerBooking.jsp"> Booked</a>
          </li>
          <li class="nav-item"> <a class="nav-link disabled" href="#">Logout</a> </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
          <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
      </div>
  </nav>
    <header>
<div class="jumbotron">
  <h2>Select Your&nbsp;&nbsp;</h2>
  <form id="form1" name="form1" method="post">
  <label for="select3">Profession:</label>
     <select name="select3" class="shadow btn" id="select3" reqiured="">
		<option value="null," selected>Profession</option>
		<option value="Plumber,">PLumber</option>
		<option value="Carpenter,">Carpenter</option>
		<option value="Painter,">Painter</option>
		<option value="Electrician,">Electrician</option>
    </select>
    <label for="select4">Date:</label>
    <input type="date" value="null" name="select4" class="shadow btn" id="select4">
	   &nbsp;
    <label for="select2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Rating:</label>
    <select name="select2" class="shadow btn" id="select2">
		<option value="null," selected>Rating</option>
		<option value="4,">Above 4</option>
		<option value="3,">Above 3</option>
		<option value="2,">Above 2</option>
    </select>
	   &nbsp;
<label for="select"><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  City:</label>
    <select name="select1" class="shadow btn" id="select">    
		 <option value="null" selected>City</option>
		 <option value=",Madurai,">Madurai</option>
		 <option value=",Coimbatore,">Coimbatore</option>
		 <option value=",Chennai,">Chennai</option>
		 <option value=",Salem,">Salem</option>
    </select>
 
	   &nbsp;
    <input name="button" type="button" class="btn btn-dark shadow-lg" id="button"  onclick="updatetable()"value="Search">
    &nbsp;
  </form>
<div class="container">
      <div class="row"> </div>
        </div>
    </div>
    </header>
<footer class="text-center"> </footer>

  <div class="container">
      <div class="cart">
        <div class="table-responsive">
          <table class="table">
            <thead class="thead-dark">
              <tr>
                <th scope="col"class="text-white">Name&nbsp;</th>
                <th scope="col"class="text-white">Profession&nbsp;</th>
<th scope="col"class="text-white">Rating&nbsp;</th>
                <th scope="col"class="text-white">Confirm your work&nbsp;</th>
              </tr>
            </thead>
            <tbody id="here">
            </tbody>
          </table>
        </div>
      </div>
  </div>
  </body>
</html>