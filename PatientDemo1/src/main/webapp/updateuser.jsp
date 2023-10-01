<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Patient</title>
<link rel="stylesheet" href="css/style.css">

 <style>
    table {
      margin-left: auto;
      margin-right: auto;
    }
  </style>
</head>
<body style = "background-image: url('image/bg3.jpg');">

 <table style="width: 100%; background-color: #B3BFBF; border-radius: 12px; padding: 35px;" border="0">
        <tr>
		
            <th width="25%">
                <img src="image/logo1.jpg" width="250" height="150" >
            </th>
            <th>
                <h1 align="center" style="font-size: 50px;">HEALTH CARE CENTER</h1>
            </th>
            <th width="25%"><br>
                <br><br>
            </th>
        </tr>
    </table><br>


	<%
	
		String id = request.getParameter("id");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String age = request.getParameter("age");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
	
	%>

	<form action = "update" method = "post">
	<table>
	<tr>
		<td>Customer ID</td>
		<td><input type = "text" name = "usersid" value = "<%= id %>" readonly></td>
	</tr>
	<tr>
		<td>First Name</td>
		<td><input type = "text" name = "fname" value = "<%= fname %>"></td>
	</tr>
	<tr>
		<td>Last Name</td>
		<td><input type = "text" name = "lname" value = "<%= lname %>"></td>
	</tr>
	<tr>
		<td>Age</td>
		<td><input type = "number" name = "age" min="1" value = "<%= age %>"></td>
	</tr>
	<tr>
		<td>Gender</td>
		<td><input type = "text" name = "gender" value = "<%= gender %>"></td>
	</tr>
	<tr>
		<td>Email</td>
		<td><input type = "text" name = "email" value = "<%= email %>"></td>
	</tr>
	<tr>
		<td>Phone Number</td>
		<td><input type = "text" name = "phone" value = "<%= phone %>"></td>
	</tr>
	<tr>
		<td>Username</td>
		<td><input type = "text" name = "uname" value = "<%= username %>"></td>
	</tr>
	<tr>
		<td>Password</td>
		<td><input type = "password" name = "pass" value = "<%= password %>"></td>
	</tr>
	</table>	
		<br>
		<input type = "submit" name = "submit" value = "Update User" class="btn">
	</form>
	<br><br>
	
<footer style="border-radius: 12px;">
        <table style="width: 100%; color: black;" border="0">
            <tr align="left">
                <th width="50%">
                    <h3><a class="textDeco" href="About page.html">About Us :</a></h3>
                </th>
                <th width="50%">
                    <h3>Contact Us :</h3>
                </th>
            </tr>
            <tr>
                <th align="left" width="50%">
                    Welcome to our e-channeling website!<br>
                    We are a premier online platform dedicated to connecting<br>
                    patients with healthcare professionals in a convenient and<br>
                    efficient manner. Our mission is to revolutionize the way people<br>
                    access medical care by providing a user-friendly interface that allows<br>
                    patients to schedule appointments with their preferred doctors or specialists.<br>
                </th>
                <th>
                    <table border="0" width="100%">
                        <tr align="left">
                            <th><img src="image/phone.png" style = "width:10%; length:10%;"></th>
                            <th>Phone Number : 0771234567</th>
                            <th><img src="image/phone.png" style = "width:10%; length:10%;"></th>
                        </tr>
                        <tr align="left">
                            <th><img src="image/email.png" style = "width:10%; length:10%;"></th>
                            <th>Email : medical@gmail.com</th>
                            <th><img src="image/email.png" style = "width:10%; length:10%;"></th>
                        </tr>
                        <tr align="left">
                            <th><img src="image/address.png" style = "width:10%; length:10%;"></th>
                            <th>Address : malabe</th>
                            <th><img src="image/address.png" style = "width:10%; length:10%;"></th>
                        </tr>
                    </table>
                </th>
            </tr>
        </table>
    </footer>

</body>
</html>