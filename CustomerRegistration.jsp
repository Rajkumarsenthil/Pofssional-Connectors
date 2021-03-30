<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link href="Signup.css" rel="stylesheet" type="text/css">
<script src="PasswordCheck.js" type="text/javascript"></script>
<body style="background-image: linear-gradient(to left, rgba(51, 204, 204,0), rgba(51, 204, 204,1));">
<div class="navbar">
<label for="textarea">&nbsp;</label>
  <a href="#home">Back</a>
  <a href="#news">Home</a>
	 <a href="#news">Login</a>
	<a href="#news">About Us</a>
<img align="middle"src="Whitetitle.jpeg" width="189" height="42"  alt=""/>
</div>
<div  class="form">
    		<form id="contactform" method="post" action="CustomerRegistration">
    		  <label for="textarea">&nbsp;</label>
    		  <label for="textfield">&nbsp;</label>
 <h2>Signup&nbsp;</h2>
<p class="contact"><label for="name">Name</label></p> 

   			  <input id="name" name="name" placeholder="First and last name" required="" tabindex="1" type="text"> 

    			<p class="contact"><label for="email">Email</label></p> 
   			  <input id="email" name="email" placeholder="example@domain.com" required="" type="email">

              <p class="contact"><label for="password">Create a password</label></p> 
    			<input type="password" id="password" name="password"   title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required> 
                <p class="contact"><label for="re-password">Confirm your password</label></p> 
    			<input type="password" id="repassword" name="re-password" onchange="Checkpassword()"  title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required> 
				<p id="matches"></p>
				
               <fieldset>
                 <label>Birthday</label>
                  <label class="month"> 
                  <select class="select-style" name="Month">
                  <option value="">Month</option>
                  <option  value="01">January</option>
                  <option value="02">February</option>
                  <option value="03" >March</option>
                  <option value="04">April</option>
                  <option value="05">May</option>
                  <option value="06">June</option>
                  <option value="07">July</option>
                  <option value="08">August</option>
                  <option value="09">September</option>
                  <option value="10">October</option>
                  <option value="11">November</option>
                  <option value="12" >December</option>
                  </label>
                 </select>    
                <label>Day<input class="day" maxlength="2" name="day"  placeholder="Day" required=""></label>
                <label>Year <input class="year" maxlength="4" name="year" placeholder="Year" required=""></label>
              </fieldset>

            <select class="select-style gender" name="gender">
            <option value="select">Gender</option>
            <option value="male">Male</option>
            <option value="female">Female</option>
            <option value="others">Other</option>
            </select><br><br>
				 <p class="contact"><label for="username">Address:</label></p> 
            <textarea name="textarea" id="textarea" cols="45" rows="5"></textarea>
            <p class="contact"><label for="phone">Mobile phone</label></p> 
            <input id="phone" name="phone" placeholder="phone number" maxlength="10" minlength="10" required="" type="text"> <br>
            <input class="buttom" name="submit" id="submit" tabindex="5" value="Sign me up!" type="submit"> 	 
  </form> 
</div>
</body>
</html>