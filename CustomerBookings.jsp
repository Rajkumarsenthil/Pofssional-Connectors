<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>User Booking</title>
    <link href="homestyle.css" rel="stylesheet">
    <script src="UpdateStatus.js" type="text/javascript"></script>
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
          <li class="nav-item active"> <a class="nav-link" href="Customerhome.jsp">Home<span class="sr-only">(current)</span></a> </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="ProfessionalBooking.jsp"> Booked</a>
          </li>
          <li class="nav-item"> <a class="nav-link disabled" href="#">Logout</a> </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
          <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
      </div>
  </nav>
<div class="container mt-3">
<h2>Your Bookings&nbsp;&nbsp;</h2>
<hr>
    </div>
<footer class="text-center"> </footer>
  <div class="container">
      <div class="cart">
        <div class="table-responsive">
          <table class="table">
            <thead class="thead-dark">
              <tr>
                <th scope="col"class="text-white">Professional Name&nbsp;</th>
                <th scope="col"class="text-white">Profession&nbsp;</th>
				<th scope="col"class="text-white">Reason&nbsp;</th>
                <th scope="col"class="text-white">Status&nbsp;</th>
              	<th scope="col"class="text-white">Review</th>
              </tr>
            </thead>
            <tbody>
              
              <%
              try{
            	  Class.forName("com.mysql.jdbc.Driver").newInstance();
            	  String temp=(String)session.getAttribute("Cusname");
            	  Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/professionaldatabase","root","");
            	  //Connection conn=DatabaseConnection.getConn();
            	  String Query="Select * from bookingdetails where Customer_Id='"+temp+"'";
            	  Statement st=conn.createStatement();
 
            	  ResultSet rs=st.executeQuery(Query);
            	  while(rs.next()){
            		     ResultSet rs2=st.executeQuery("select * from professionaldata where Professional_Email='"+rs.getString(1)+"'");
            		  	if(rs2.next()){
             %>
             			<tr>
            		  	<td>
            		  	<div class="main">
                  		<div class="d-flex">
                    	<!--W=145 H=98-->
                  		</div>
                  		<div class="des">
                    	<p><%=rs2.getString("Professional_Name")%>&nbsp;</p>
                  		</div>
                		</div></td>
                		<td><p><%=rs2.getString("Profession")%>&nbsp;</p></td>
						<td><p><%=rs.getString("Reason") %>&nbsp;</p></td>
                		<div class="counter"> <i class="fas fa-angle-down"></i> <i class="fas fa-angle-up"></i> </div></td>
            		    <td><p><%=rs.getString("Status") %>&nbsp;</p></td>
            		    <%String para=rs.getString(1)+","+rs.getString(2); %>
                		<td>
                	
                	<a href="Review.jsp">	<input type="button" name="reviewbutton"  class="btn-dark my-2 btn" value="Review" onclick="passpass()">
       					</a>
       						</td>     		 		
            		 	</tr>
            		 <%}
            	  }
              }catch(Exception e){
            	  out.println(e.getMessage());
            	  e.printStackTrace();
              }
              %>
              <!----->
            </tbody>
          </table>
        </div>
      </div>
  </div>
  </body>
</html>