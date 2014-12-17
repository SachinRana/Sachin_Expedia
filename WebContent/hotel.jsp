<html>
<head>
<title>Hotel Search Page</title>
<link rel="stylesheet" href="css/styles.css" />
<style>

 
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

  $(document).ready(function() {
	  document.getElementById('login-box').style.display = 'none';

	  findallHotels();

	  });
 
  
   
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
			 <td align="center"><input type="button" align="middle" value="Add New Hotels" class="button" onclick="document.location='http://localhost:8080/Sachin_Expedia/newHotel.jsp'" /></td>
			</tr>
  </table>
			
			
	<h1 align="center">Expedia.co.in Hotels Search</h1>
 
 <div id=".search-box1">
 <h3>Search Hotel By Name </h3>
 	<table>
 		<tr>
			
				<td>Hotel Name:</td>
				<td><input type='text' name='hotelId' value='' id="hotelId" ></td>
				<td align="center"><input type="button" align="middle" value="Search" class="button" onclick="searchHotelByName()" /></td>
			</tr>
 		</table>
 </div>
 
 
	<div id="login-box">
	<h3>TOP HOTEL DESTINATIONS</h3>
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
				<td>minTotalRate:</td>
				<td><input type='text' name='username' value='' id="u" ></td>
			</tr>
			<tr>
				<td>maxTotalRate:</td>
				<td><input type='text' name='password' id="password" /></td>
			</tr>
			<tr>
				<td>latitude:</td>
				<td><input type='text' name='latitude' value='' id="latitude" ></td>
			</tr>
			<tr>
				<td>longitude:</td>
				<td><input type='text' name='longitude' id="longitude" /></td>
			</tr>
			
			</table>
			<table align="left">
			<tr align="center" >					
			  <td align="center"><input type="button" align="middle" value="Ok" class="button" onclick="pageMovement()" /></td>
			
			<td align="center"><input type="button" align="middle" value="Search For Hotels" class="button" onclick="findallHotels()" /></td>
			</tr>
		  </table>	
		 
		
	</div>
	<div id="search-box">
	<h3>TOP HOTEL DESTINATIONS</h3>
	 <table style="width: 100%" >
     <thead>
          <tr>
               <th>Hotel Id</th>
               <th>Name</th>
               <th>Country</th>                          
                <th>StreetAddress</th>
                <th>UserCity</th>
               <th>Latitude</th>
               <th>Longitude</th>
               <th>CheckInDate</th>
               <th>CheckOutDate</th>
           </tr>
     </thead>
     <tbody id="tbody">
     </tbody>
</table>
	</div>

</body>
</html>