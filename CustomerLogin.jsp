<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<link href="1.css" rel="stylesheet" type="text/css">
<script src="Checkuser.js" type="text/javascript"></script>
<body class="align" style="background-image: linear-gradient(to right, rgba(51, 204, 204), rgba(51, 204, 204));">
<div class="grid"> <img src="robotic_80px.png" width="80" height="80" alt=""/>
  <form action="CustomerLoginFunction" method="post" class="form login">

      <header class="login__header">
        <h3 class="login__title">Customer Login</h3>
      </header>

      <div class="login__body">

        <div class="form__field">
          <input type="email" name="userid" placeholder="Email" required>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>

        <div class="form__field">
          <input type="password" name="pass" placeholder="Password" required>
        </div>

      </div>

      <footer class="login__footer">
                  <a href="ProfessionalSignup.jsp">
		  <img src="back_50px.png" width="50" height="50" align="right" >
                   </a>
        <input type="submit" align="center" value="Login">
      </footer>
<a href="ProfessionalConnectorPage.jsp">
      <input type="button" name="button" id="button" value="Back" action="2.html">
 </a>

  </form>

</div>

</body>
</html>
    