<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Channeling</title>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/channelingstyle.css">
 <style>
    table {
      margin-left: auto;
      margin-right: auto;
    }
    
  </style>
  
 <script>
    window.onload = function() {
        var today = new Date().toISOString().split('T')[0];
        document.getElementById('dateInput').setAttribute('min', today);
    };
</script>
  
  
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
    

	<form action = "channel" method = "post" class="patient-form">
		<h1 class="form-title">Channeling a Doctor</h1>
		<label>First Name</label>
		<input type = "text" name = "fname" class="form-input" required><br>
		<label>Last Name</label>
		<input type = "text" name = "lname" class="form-input" required><br>
		<label>Age</label>
		<input type = "number" name = "age" min = "1" class="form-select" required><br>
		<label>Doctor Name</label>
		<select name = "dname" required>
    		<option value="Dr.H.S.D.Rathnayake">Dr.H.S.D.Rathnayake</option>
    		<option value="Dr.A.Perera">Dr.A.Perera</option>
    		<option value="Dr.C.N.Jayamali">Dr.C.N.Jayamali</option>
    		<option value="Dr.K.Gamage">Dr.K.Gamage</option>
    		<option value="Dr.S.De Silva">Dr.S.De Silva</option>
    		<option value="Dr.Y.N.Bandara">Dr.Y.N.Bandara</option>
    		<option value="Dr.L.L.Jayaweera">Dr.L.L.Jayaweera</option>
  		</select><br><br>
		<label>Date</label>
		<input type = "date" name = "date" class="form-input" id="dateInput" required><br>
		<label>Are you channeling before the doctor?</label>
		<input type = "radio" name = "status" value = "Yes" class="form-radio">Yes
		<input type = "radio" name = "status" value = "No" class="form-radio" checked>No<br><br>
		<label>Phone</label>
		<input type = "text" name = "phone" class="form-input" required><br>
		<label>Email</label>
		<input type = "text" name = "email" class="form-input" required><br>
		
		<input type = "submit" name = "submit" value = "Confirm" class="form-button">									 
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