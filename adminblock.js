function blockuser(){
	var x=document.getElementById("profid").value;
	alert("clicked");
	var ob=new XMLHttpRequest();
	ob.open("GET","AdminBooking?msg="+x+"",true);
	ob.send();
}