 var ob=new XMLHttpRequest();

   ob.onreadystatechange=function ss()
   {
            if(ob.readyState==4)
            {
                var str=ob.responseText;
                if(str==="false"){
                	window.alert("Login First");
                	window.location.replace("http://localhost:8080/ProfessionalConnector/CustomerLogin.jsp");
                }
            }
   }
   ob.open("GET","GetchUser",true);
   ob.send();