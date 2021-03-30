<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link href="ProStyle.css" rel="stylesheet" type="text/css">
    <link href="homestyle.css" rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
            crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script src="Checkpro.js" type="text/javascript" ></script>
<script src="multidatespicker.js" type="text/javascript"></script>
</head>
<body>
	<%
		String user=(String)session.getAttribute("Cusname");
		if(user=="null"){
			response.sendRedirect("ProfessionalLogin.jsp");
		}
	%>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <strong><img src="business_group_w.png" width="30" height="30" alt=""/></strong><a class="navbar-brand" href="#">&nbsp;</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
<ul class="navbar-nav mr-auto">
      <li class="nav-item active">
            <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Edit&nbsp;</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="ProfessionalBooking.jsp" onclick="load()" id="navbarDropdown" role="button" aria-haspopup="true" aria-expanded="false">Booked&nbsp;</a>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled" href="#">Logout&nbsp;</a>
          </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
</form>
      </div>
      <div class="col-lg-1" align="middle">
        <label class="switch" >
          <input type="checkbox">
          <span class="slider round"></span></label>
      </div>
    </nav>
    <div class="container mt-3">
<h2>Welcome&nbsp;&nbsp;</h2>
<hr>
    </div>
<form  method="post" action="ProfessionalAvailability">
	<div class="container">
  <div class="card shadow border-0 mb-5 align-content-md-center">
<div class="card-body" style="width: 30%;margin:0px;">
      <blockquote>
        <h6 class="mb-1">Select your Available Dates</h6>
      </blockquote>
      
      <input type="text" id="selectedValues" name="Dates_txt" class="date-values" readonly/>
      <div id="parent" class="container" style="display:none;">
        <div class="row header-row">
          <div class="col-xs previous"> <a href="#" id="previous" onclick="previous()"> <i class="fa fa-arrow-left" aria-hidden="true"></i> </a> </div>
          <div class="card-header month-selected col-sm" id="monthAndYear"></div>
          <div class="col-sm">
            <select class="form-control col-xs-6" name="month" id="month" onchange="change()">
            </select>
          </div>
          <div class="col-sm">
            <select class="form-control col-xs-6" name="year" id="year" onchange="change()">
            </select>
          </div>
          <div class="col-xs next"> <a href="#" id="next" onclick="next()"> <i class="fa fa-arrow-right" aria-hidden="true"></i> </a> </div>
        </div>
        <table id="calendar">
          <thead>
            <tr>
              <th>S</th>
              <th>M</th>
              <th>T</th>
              <th>W</th>
              <th>T</th>
              <th>F</th>
              <th>S</th>
            </tr>
          </thead>
          <tbody id="calendarBody">
          </tbody>
        </table>
      </div>
    </div>
</div>
  <input name="submit" type="submit" class="but1" id="submit"  onclick="message()"value="Update"  >
		<script type="text/javascript">
		function message(){
			alert("Sucessfully updated");
		}</script>
</div>
</form>
<p>                          </p>
<h2>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
 &nbsp; &nbsp; &nbsp; About Us</h2>
</body>
</html>