<html>
<head>
<title>Hotel Search Page</title>
<link rel="stylesheet" href="css/styles.css" />
<style>
.error {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #a94442;
	background-color: #f2dede;
	border-color: #ebccd1;
}
 
.msg {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #31708f;
	background-color: #d9edf7;
	border-color: #bce8f1;
}
 
#login-box {
position: absolute;
    left: 10px;
	width: 500px;
	padding: 70px;
	margin: 75px auto;
	background: #fff;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	border: 1px solid #000;
}

#search-box {
	width: 1000px;
	padding: 50px;
	margin: 80px auto;
	background: #fff;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	border: 1px solid #000;
}




</style>

	 <script src="${pageContext.request.contextPath}/js/jquery-1.7.1.min.js"></script>
     <script src="${pageContext.request.contextPath}/js/main.js"></script>
     
  <script type="text/javascript">

    
   
  </script> 

</head>
<body>

  <table align="right">
            <tr align="center" >					
			 <td align="center"><input type="button" align="middle" value="Logout" class="button" onclick="document.location='http://localhost:8080/Sachin_Expedia/login.jsp'" /></td>
			</tr>
  </table>
			
		<table align="right">
            <tr align="right" >					
			 <td align="center"><input type="button" align="middle" value="Search Hotel" class="button" onclick="document.location='http://localhost:8080/Sachin_Expedia/hotel.jsp'" /></td>
			</tr>
  </table>	
	<h1 align="center">Expedia.co.in Add Hotels</h1>
 
	<div id="login-box">
	<h3>Add New Hotel</h3>
	<table>	  
		  
		  	<tr>
				<td>Hotel Id:</td>
				<td><input type='text' name='hotelId' value='' id="hotelId" ></td>
			</tr>				
			<tr>
				<td>Hotel Name:</td>
				<td><input type='text' name='name' value='' id="name" ></td>
			</tr>
		  	<tr>
				<td>Hotel Country:</td>
				<td><input type='text' name='country' value='' id="country" ></td>
			</tr>
		  
			<tr>
				<td>City:</td>
				<td><input type='text' name='city' value='' id="city" ></td>
			</tr>
		
			<tr>
				<td>Street Address:</td>
				<td><input type='text' name='streetAddress' id="streetAddress" /></td>
			</tr>
			
				<tr>
				<td>Hotel Description:</td>
				<td><input type='text' name='description' id="description" /></td>
			</tr>			
			<tr>
				<td>MinTotalRate:</td>
				<td><input type='text' name='username' value='' id="u" ></td>
			</tr>
			<tr>
				<td>MaxTotalRate:</td>
				<td><input type='text' name='password' id="password" /></td>
			</tr>
			<tr>
				<td>Latitude:</td>
				<td><input type='text' name='latitude' value='' id="latitude" ></td>
			</tr>
			<tr>
				<td>Longitude:</td>
				<td><input type='text' name='longitude' id="longitude" /></td>
			</tr>
			
			</table>
			<table align="left">
			<tr align="center" >					
			 
			<td align="center"><input type="button" align="middle" value="Add Hotel" class="button" onclick="addNewHotels()" /></td>
			</tr>
		  </table>	
		 
		
	</div>
	

</body>
</html>