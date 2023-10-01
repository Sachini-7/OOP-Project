<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css">

<style>
.button {
  display: block;
  margin: 0 auto;
  text-align: center;
  background-color: #837F7F;
  border: none;
  color: #333;
  padding: 10px 20px;
  text-decoration: none;
  cursor: pointer;
  font-size: 16px;
  color: white;
   width: 150px;
}
h1 {
    text-align: center;
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

	<h1>Inserted successfully</h1>
	
	<button class="button" onclick="window.location.href='login.jsp'">Login</button><br><br>
	<h1>THANK YOU FOR JOINING WITH US</h1><br>
	<button class="button" onclick="window.location.href='channeling.jsp'">Channeling</button>

</body>
</html>