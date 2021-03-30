// Validating Empty Field
function check_empty() {
if (document.getElementById('name').value == "" || document.getElementById('email').value == "" || document.getElementById('msg').value == "") {
alert("Fill All Fields !");
} else {
document.getElementById('form').submit();
alert("Form Submitted Successfully...");
}
}
//Function To Display Popup
function div_show() {
document.getElementById('abc').style.display = "block";
document.getElementById('')
}
//Function to Hide Popup
function div_hide(){
document.getElementById('abc').style.display = "none";
}
function Bookpro(){
	alert("hello");
	var x=document.getElementById("custId").value;
	alert(x);
	var y=document.getElementById("msg").value;
	var t=x.concat(",");
	t=t.concat(y);
	var ob=new XMLHttpRequest();
	   ob.open("GET","BookPro?msg="+t+"",true);
	   ob.send();
	
}