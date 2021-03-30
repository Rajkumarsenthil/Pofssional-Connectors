<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Confirm Your Services</title>
    <link href="homestyle.css" rel="stylesheet">
    <script src="UpdateStatus.js"type="text/javascript"></script>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <strong><img src="business_group_w.png" width="30" height="30" alt=""/></strong><a class="navbar-brand" href="#">&nbsp;</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
<ul class="navbar-nav mr-auto">
      <li class="nav-item active">
            <a class="nav-link" href="Professionalhome.jsp">Home</a>
      </li>
          <li class="nav-item dropdown">
            <a class="nav-link " href="ProfessionalBooking.jsp"  onclick="">Booked<span class="sr-only">(current)</span>&nbsp;</a>
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
<h2>Your Bookings&nbsp;&nbsp;</h2>
<hr>
    </div>

     <section class="mt-5">
        <div class="container">
            <div class="cart">
            <div class="table-responsive">
                <table class="table">
                    <thead class="thead-dark">
                     <tr>
                            <th scope="col"class="text-white">Booked By&nbsp;</th>
                            <th scope="col"class="text-white">DATE&nbsp;</th>
							 <th scope="col"class="text-white">Reason&nbsp;</th>
							<th scope="col" class="text-white">Status</th>
                            <th scope="col"class="text-white">Confirm your work&nbsp;</th>
                        </tr>
                    </thead>
                    <tbody id="bookhere">
                       	<% try{
                      	  Class.forName("com.mysql.jdbc.Driver").newInstance();
                    	  String temp=(String)session.getAttribute("Cusname");
                    	  Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/professionaldatabase","root","");
                    	  //Connection conn=DatabaseConnection.getConn();
                    	  String Query="Select * from bookingdetails where Professional_Id='"+temp+"'";
                    	  Statement st=conn.createStatement();
                    	  ResultSet rs=st.executeQuery(Query);
                    	  while(rs.next()){
                    		  if(rs.getString("Status")!="denied"){   
                    		  ResultSet rs2=st.executeQuery("select * from customerdata where Customer_Email='"+rs.getString(2)+"'");
                    		  	if(rs2.next()){
                     %>
                     			<tr>
                    		  	<td>
                    		  	<div class="main">
                          		<div class="d-flex">
                            	<!--W=145 H=98-->
                          		</div>
                          		<div class="des">
                            	<p><%=rs2.getString("Customer_Name")%>&nbsp;</p>
                          		</div>
                        		</div></td>
                        		<td><p><%=rs.getString("Date")%>&nbsp;</p></td>
        						<td><p><%=rs.getString("Reason") %>&nbsp;</p></td>
        						<td><p><%=rs.getString("Status") %>&nbsp;</p></td>
                        		<div class="counter"> <i class="fas fa-angle-down"></i> <i class="fas fa-angle-up"></i> </div></td>
                    		 	<td>
                    		 <% 	String se=rs2.getString(2)+","+rs.getString("Date")+","+temp;%>
                      			<input type="hidden" name="hidden" id="msg" value='<%=se%>'>
                    		 	<input name="button2" type="button" class="btn-dark my-2 btn" id="button2" onclick="accepted()"value="Confirm">                
                    		    <input name="button" type="button" class="btn-danger btn" id="button" onclick="cancel()" value="Cancel">
                    		 	</td>
                    		 	</tr>
                    		 <%}
                    	  }}
                      }catch(Exception e){
                    	  out.println(e.getMessage());
                    	  e.printStackTrace();
                      }
                      %>
                     
                    </tbody>
                </table>
            </div>
            </div>
        </div>
    </section>

<hr>
<hr>
    <div class=container">
       <div class="row">&nbsp; </div>
      <div class="row"> </div>
    </div>
    <footer class="text-center">
      <div class="container">
        <div class="col-md-4 col-12 mt-md-0 mt-2 col-lg-12">
          <h3>&nbsp;Contact Us</h3>
          <hr>
          <address>
          </address>
          <address>
<img src="facebook.png" width="40" height="40" alt=""/><a href="mailto:#"><img src="instagram.png" width="50" height="50" alt=""/><img src="twitter.png" width="40" height="40" alt=""/>&nbsp;</a>
          </address>
        </div>
<strong>&nbsp;</strong>
        <div class="row"> </div>
      </div>
    </footer>
  </body>
</html>