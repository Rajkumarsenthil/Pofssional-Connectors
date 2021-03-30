<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<link href="1.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="Checkpro.js"></script>
<body class="align" style="background-image: url('b4.jpg');">
<div class="grid">
<h1 class="title"></h1>
  <form action="ProfessionalLoginFunction" method="post" class="form login">

      <header class="login__header">
        <h3 class="login__title">Handyman Login</h3>
      </header>

      <div class="login__body">

        <div class="form__field">
          <input type="email" placeholder="Email" name="userid" required>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>

        <div class="form__field">
          <input type="password" placeholder="Password" name="pass" required>
        </div>

      </div>

      <footer class="login__footer">
                  <a href="ProfessionalSignup.jsp">
		  <img src="back_50px.png" width="50" height="50" align="right" >
                   </a>
        <input type="submit" align="center" value="Login">
      </footer>
<a href="ProfessionalSignup">
    <input type="button" name="button" id="button" value="Back" action="2.html">
 </a>
  </form>
</div>
</body>
</html>
    