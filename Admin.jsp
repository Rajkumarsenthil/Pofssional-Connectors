<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	  <title>Admin</title>
    <link href="homestyle.css" rel="stylesheet">
	<script src="adminblock.js" type="text/javascript"></script>
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
          <li class="nav-item active"> <a class="nav-link" href="#">Admin Home <span class="sr-only">(current)</span></a> </li>
          <li class="nav-item"> </li>
          <li class="nav-item dropdown"> </li>
          <li class="nav-item"> <a class="nav-link disabled" href="#">Logout</a> </li>
        </ul>
</div>
  </nav>
    <header>
<div class="jumbotron">
  <h2>Report List&nbsp;&nbsp;</h2>
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
                <th scope="col"class="text-white">No of complaint</th>
<th scope="col"class="text-white">Rating&nbsp;</th>
                <th scope="col"class="text-white">Block user&nbsp;</th>
              </tr>
            </thead>
            <tbody>
                
              <%
              try{
            	  Class.forName("com.mysql.jdbc.Driver").newInstance();
            	  String temp=(String)session.getAttribute("Cusname");
            	  Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/professionaldatabase","root","");
            	  //Connection conn=DatabaseConnection.getConn();
            	  String Query="Select * from professionaldata ";
            	  Statement st=conn.createStatement();
            	  ResultSet rs=st.executeQuery(Query);
            	  while(rs.next()){
             
             %>
             			<tr>
            		  	<td>
            		  	<div class="main">
                  		<div class="d-flex">
                    	<!--W=145 H=98-->
                  		</div>
                  		<div class="des">
                    	<p><%=rs.getString("Professional_Email")%>&nbsp;</p>
                  		</div>
                		</div></td>
                		<td><p><%=rs.getString("Profession")%>&nbsp;</p></td>
						<td><p><%=rs.getString("Professional_Rating") %>&nbsp;</p></td>
                		<td>
                  		    <p><%=rs.getString("NO_Complaint") %>&nbsp;</p></td>
            		    <%String para=rs.getString(2); %>
                		 <td>
                		 <input type="hidden" id="profid" value='<%=para%>'>
						<input type="button" class="btn btn-outline-success" onclick="blockuser()" value="Block">
			    		</td>   		 		
            		 	</tr>
            		 <%}	  
              }catch(Exception e){
            	System.out.println(e+"    ");
            
              }
              %>
            </tbody>
          </table>
        </div>
      </div>
  </div>
    </form>
</div>
</body>
</html>