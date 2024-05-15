<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>

<link rel="stylesheet" type="text/css" href="style.css">

</head>
<body class="B">

<marquee width="100%" direction="right" height="100px"  behavior="alternate"  style="font-size: 25px" style="color: white" class="m">Online Examination Portal ! &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Online Examination Portal ! &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Online Examination Portal !</marquee>

<div align="center" class="login">
 
  <h1 style="color: red" >Student Login Form</h1>
  <form action="<%= request.getContextPath() %>/RegisterController" method="post" >
   <table style="with: 80%" >
   
    <tr>
     <td>Name</td>
     <td><input type="text" name="Name" /></td>
    </tr>
   
    <tr>
     <td>Password</td>
     <td><input type="Password" name="Password" /></td>
    </tr>
     
     <tr>
      <td>Id</td>
      <td><input type="number" name="idstudents" /></td>
     </tr>
     
 </table>
 <input type="hidden" name="action" value="login">
   <input type="submit" value="Login" />
  
  </form>
 </div>


</body>
</html>