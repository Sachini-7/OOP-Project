<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Select Signup</title>
    <link rel="stylesheet" href="css/style.css">
    
    <style>
    .centered-table {
        justify-content: center;
        align-items: center;
    }
</style>
    
</head>
<body>

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
    <ul class="menu">
        <li class="menu"><a href="#">HOME</a></li>
        <li class="menu"><a href="#">ABOUT</a></li>
        <li class="menu"><a href="#">CONTACT</a></li>
        <li class="menu"><a href="#">ROOM</a></li>
        <li class="menu"><a href="#">PAYMENT</a></li>
    </ul><br>
    <div class="container">
        <table border="2" align="center" style="width: 50%; border-color: black;" class="centered-table">
            <tr><th><br>
                <a class="Select_btn btn1" onclick="window.location.href='registration.jsp'" type="button">Patient SignUp</a><br><br>
                <a class="Select_btn btn1" onclick="window.location.href='#'" type="button">Doctor SignUp</a><br><br>
                <a class="Select_btn btn1" onclick="window.location.href='#'" type="button">Admin SignUp</a><br><br>
            </th></tr>
        </table>
    </div>   
    <br>
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
</Body>

</body>
</html>