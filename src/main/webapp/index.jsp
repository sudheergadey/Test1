<html>
<head><script type="text/javascript">
function validateForm() {
    var x = document.forms["myForm"]["uname"].value;
    if (x == null || x == "") {
        alert("Name must be filled out");
        return false;
    }
	 var y = document.forms["myForm"]["upass"].value;
    if (y == null || y == "" ) {
        alert("Pass must be filled out");
        return false;
    }
	var z=isNaN(y) ;
	if(z==true)
	{
        alert("Pass must be numeric");
        return false;
    }
    if (!x.match(/^[a-zA-Z]+$/)) 
    {
        alert('Only alphabets are allowed');
        return false;
    }
}
</script
</head>
<body bgcolor ="white">
<center>
<h2>*****Login Page By Devendra Singh**********</h2>
<form  name="myForm" action ="index1.jsp" onsubmit="return validateForm()" method="post">
Name:<input type="text" name="uname"/><br><br>
Password:<input type="password" name="upass"/><br><br>
<input type="submit" value="Submit"/>
</form></center>
</body>
</html>
