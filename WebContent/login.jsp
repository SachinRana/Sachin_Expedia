<html>
<head>
<title>Login Page</title>
<style>


 
#login-box {
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
 
   function pageMovement()
   {
	   alert("Login Success");
	  document.location='http://localhost:8080/Sachin_Expedia/hotel.jsp';   		
   }    
   
  </script> 

</head>
<body>
<h1 align="center">Expedia.co.in Hotels Search</h1>
 
	<div id="login-box">
	<h3>Login with UserName and Password</h3>
 <table>
			<tr>
				<td>UserName:</td>
				<td><input type='text' name='username' value='Expedia@1' id="u"  disabled="disabled"></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type='password' name='password' value='sachin@123' id="password"disabled="disabled" /></td>
			</tr>
			<tr align="center" >					
			 <td align="center"><input type="button" align="middle" value="Ok" class="button" onclick="pageMovement()" /></td>
			</tr>
		  </table>
 
		
		
	</div>

</body>
</html>