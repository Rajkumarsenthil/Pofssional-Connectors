<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>User Home</title>
    <link href="homestyle.css" rel="stylesheet">
    <script src="Checkuser.js" type="text/javascript"></script>
  	<script src="Searchresponse.js" type="text/javascript"></script>
  </head>
  <body style="background-image: linear-gradient(to top, rgba(51, 204, 204,0), rgba(51, 204, 204,1));">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <p> <img src="business_group_127px.png" width="39" height="39" alt=""/><a class="navbar-brand" href="#">&nbsp;</a></p>
      <p>&nbsp;</p>
<p>&nbsp;</p>
      <p><a class="navbar-brand" href="#">&nbsp;</a> </p>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent" >
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active"> <a class="nav-link" href="Professionalhome.jsp">Home <span class="sr-only">(current)</span></a> </li>
          
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="CustomerBookings.jsp" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Booked</a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="#">Action</a> <a class="dropdown-item" href="#">Another action</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="#">Something else here</a> 
            </div>
          </li>
          <li class="nav-item"> <a class="nav-link disabled" href="#">Logout</a> </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
          <input class="form-control mr-sm-2" id="searchtxt" type="search" name="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit" onclick="searchRespone()">Search</button>
        </form>
      </div>
  </nav>
    <header>
      <div class="jumbotron">
        <div class="container">
          <div class="row">
            <div class="col-12">
              <h1 class="text-center">We are Professional Connectors&nbsp;</h1>
              <p class="text-center">&nbsp;</p>
              <p class="text-center">Business opportunities are like buses, there's always another one coming.</p>
<p class="text-center">&nbsp;– Richard Branson.&nbsp;</p>
<p>&nbsp;</p>
              <p class="text-center">&nbsp; </p>
            </div>
          </div>
        </div>
      </div>
    </header>
    <form action="SearchResponse">
  <section>
      <div class="container">
        <div class="row">
          <div class="col-lg-12 mb-4 mt-2 text-center">
            <h2>Available Services</h2>
          </div>
        </div>
      </div>
      <div class="container ">
        <div class="row">
<div class="col-lg-4 col-md-6 col-sm-12 text-center">
	<a href="CustomerProSearch.jsp">
	<input type="image" value="Electrician" name="imageField3" id="imageField3" src="elect.png">
    </a>
  <h3>&nbsp;</h3>
  <h3>Electrician&nbsp;</h3>
		
<p>&nbsp;</p>
        </div>
              <div class="col-lg-4 col-md-6 col-sm-12 text-center"> 
			  <a href="CustomerProSearch.jsp">
			  <input type="image" value="" Onclick="this.value=Plumber" name="imageField2" id="imageField2" src="plumber.png">
              <script type="text/javascript">
              function Passvalueplumber(){
            	  <%
            	  	System.out.println("Hi");
            	  	String str="";
            	  	session.setAttribute("searchon","plumber");
                   %>
              }</script>
              </a>
            <h3>&nbsp;</h3>
            <h3>Plumber&nbsp;</h3>
<p>&nbsp;</p>
          </div>
          <div class="col-lg-4 col-md-6 col-sm-12 text-center">
			  <a href="CustomerProSearch.jsp">
			  <input type="image" name="imageField" onclick="Passvaluecarpenter()"id="imageField" src="carpenter.png">
               
              </a>
            <h3>&nbsp;</h3>
            <h3>Carpenter&nbsp;</h3>
<p>&nbsp;</p>
          </div>
          <div class="col-lg-4 col-md-6 col-sm-12 text-center offset-lg-0">
            <h3>&nbsp;</h3>
			  <a href="">
			  <input type="image" name="imageField4" onclick="Passvaluehousecleaner()"id="imageField4" src="housecleane.png">
              </a>
            <h3>House Cleaner&nbsp;</h3>
<p>&nbsp;</p>
          </div>
          <div class="col-lg-4 col-md-6 col-sm-12 text-center">
			  <a href="">
		
             <input type="image" name="imageField5" onclick="Passvaluepainter()" id="imageField5" src="painter.png">
        	  
              </a>
            <h3>&nbsp;</h3>
            <h3>Painter&nbsp;</h3>
<p>&nbsp;</p>
          </div>
          <div class="col-lg-4 col-md-6 col-sm-12 text-center">
			  <a href="">
			  <input type="image" name="imageField6" id="imageField6" src="other.png">
              </a>
            <h3>&nbsp;</h3>
            <h3>Other&nbsp;</h3>
<p>&nbsp;</p>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-12 mt-4 mb-2 text-center">
            <h2>&nbsp;About Us</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6 col-lg-6">
            <blockquote class="blockquote"><small class="blockquote-footer"><cite title="Source Title">&nbsp;</cite></small> </blockquote>
          </div>
        </div>
      </div>
<div>
    <div class="container">
          <div class="row"><p>
<div class="text-center col-md-8 col-12 mx-auto">
<img src="twitter.png" width="20" height="20" alt=""/>       
<img src="instagram.png" width="30" height="30" alt=""/>      
<img src="facebook.png" width="20" height="20" alt=""/>      
         </p> <p class="lead">&nbsp;</p>
</div>
</div>
          <div class="row">
            <div class="col-sm-4 col-auto mx-auto"> </div>
          </div>
        </div>
      </div>
</section>

</form>
<footer class="text-center"> </footer>
    <div id="popupContact">
<!-- Contact Us Form -->
<form class="formpop"action="#" id="form" method="post" name="form">
<img id="close" src="cancel.png" onclick ="div_hide()">
<h2>Booking Details</h2>
<hr>
	<input type="hidden" id="custId" name="custId" value="3487">
	<textarea id="msg" name="message" placeholder="Message"></textarea>
	<input name="but5" type="button" class="btn-outline-success my-sm-0 my-2 btn" id="button4" value="Confirm Booking">
</form>
</div>
<!-- Popup Div Ends Here -->
</div>
<!-- Display Popup Button -->
<button class="btn btn-outline-success" onclick="div_show()">Book&nbsp;</button>
			    </td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
  </div>
  </body>
</html>