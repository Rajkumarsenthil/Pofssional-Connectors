<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial;
  color: white;
}

.split {
  height: 100%;
  width: 50%;
  position: fixed;
  z-index: 1;
  top: 0;
  overflow-x: hidden;
  padding-top: 20px;
}

.left {
  left: 0;
  background-color: #111;
}

.right {
  right: 0;
  background-color: #FFFFFF;color: green;
}

.centered {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  text-align: center;
}

.centered img {
  width: 150px;
  border-radius: 50%;
}
	
.flip-card {
  background-color: transparent;
  width: 300px;
  height: 300px;
  perspective: 1000px;
}

.flip-card-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.6s;
  transform-style: preserve-3d;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
}

.flip-card:hover .flip-card-inner {
  transform: rotateY(180deg);
}

.flip-card-front, .flip-card-back {
  position: absolute;
  width: 100%;
  height: 100%;
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
}

.flip-card-front {
  background-color: #bbb;
  color: black;
}

.flip-card-back {
  background-color: #670101;
  color: white;
  transform: rotateY(180deg);
}
	
.btn {
}
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  display: flex;
  align-items: center;
  justify-content: center;
  min-height: 100vh;
  background: #0c0c0c;
}

a {
  position: relative;
  padding: 20px 50px;
  display: block;
  text-decoration: none;
  text-transform: uppercase;
  width: 200px;
  overflow: hidden;
  border-radius: 40px;
}

a span {
  position: relative;
  color: #fff;
  fot-size: 20px;
  font-family: Arial;
  letter-spacing: 8px;
  z-index: 1;
}

a .liquid {
  position: absolute;
  top: -70px;
  left: 0;
  width: 200px;
  height: 200px;
  background: #E20000;
  box-shadow: inset 0 0 50px rgba(0, 0, 0, .5);
  transition: .5s;
}

a .liquid::after,
a .liquid::before {
  content: '';
  width: 200%;
  height: 200%;
  position: absolute;
  top: 0;
  left: 50%;
  transform: translate(-50%, -75%);
  background: #FFFFFF;
}

a .liquid::before {
  
  border-radius: 45%;
  background: #0000;
  animation: animate 5s linear infinite;
}

a .liquid::after {
  
  border-radius: 40%;
  background: rgba(20, 20, 20, .5);
  animation: animate 10s linear infinite;
}

a:hover .liquid{
  top: -120px;
}
.but1 {
  background-color: #8E1010; 
  color: white; 
  border: 2px solid #8E1010;
}

.but1:hover {
  background-color: #8E1010;
  color: white;
	 box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
	.btn {
    transition: none;
  }
}

.btn:hover {
  color: #212529;
  text-decoration: none;
}

.btn:focus, .btn.focus {
  outline: 0;
  box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.25);
}

.btn.disabled, .btn:disabled {
  opacity: 0.65;
}
@keyframes animate {
  0% {
    transform: translate(-50%, -75%) rotate(0deg);
  }
  100% {
    transform: translate(-50%, -75%) rotate(360deg);
  }
}
.center {
  margin: auto;
  width: 75%;
  border: 3px solid ;
  padding: 10px;
}
</style>
</head>
<body>

<div class="split left">
	<img src="left.png" width="750" height="100" alt=""/>
  <div class="centered">
<div class="flip-card">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <img src="elliot.jpg" alt="Avatar" style="width:300px;height:300px;">
    </div>
    <div class="flip-card-back">
      <h1> Welcome</h1>
      <h1>Professional</h1>
      <p>&nbsp;</p>
      <p><br>
      </p>
      
<div class="center"><br>
		    <a href="ProfessionalLogin.jsp">
  <span>Login</span>
  <div class="liquid" align="middle"></div>
		</a>
      </div>
      <div>
		 </div>
<p>
	    Don't have an Account?" </p>
	<a href="ProfessionalSignup.jsp">	<input name="button" type="button" class="but1 btn" id="button" value="Signup">	</a>
</div>
	
  </div>
</div>
	
</div>
	
</div>
<h2>This is the content for Layout H2 Tag</h2>
<div class="split right">
	<img src="right.png" width="600" height="100" alt=""/>
<div class="centered">
<div class="flip-card">
      <div class="flip-card-inner">
    <div class="flip-card-front">
      <img src="matthew.png" alt="Avatar" style="width:300px;height:300px;">
      
</div>
    <div class="flip-card-back">
      <h1> Welcome</h1>
      <h1>User&nbsp;</h1>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      
<div class="center"><br>
		    <a href="CustomerLogin.jsp">
  <span>Login</span>
  <div class="liquid" align="middle"></div>
		</a>
      </div>
		<p>
	    Don't have an Account? </p>
	<a href="CustomerRegistration.jsp">	<input name="button" type="button" class="but1 btn" id="button" value="Signup">
      </a>
      <div>
		 </div>
<h1>&nbsp;</h1>
</div>
	
  </div>
  </div>
  </div>
</div>
  </div>
</div>
     
</body>
</html>