var ob=new XMLHttpRequest();
console.log("opened");
   ob.onreadystatechange=function ss()
   {
            if(ob.readyState==4)
            {
                var str=ob.responseText;
                if(str==="false"){
                	window.alert("Login First");
                	window.location.replace("http://localhost:8080/ProfessionalConnector/ProfessionalLogin.jsp");
                }
            }
   }
   ob.open("GET","GetchUser",true);
   ob.send();
   
   function updateinfo(){
	   var ob=new XMLHttpRequest();

	   ob.onreadystatechange=function ss()
	   {
	            if(ob.readyState==4)
	            {
	                var str=ob.responseText;
	               
	            }
	   }
	   ob.open("GET","ProfessionalAvailability",true);
	   ob.send();
   }