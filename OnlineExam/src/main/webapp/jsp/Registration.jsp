<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Registration Form</title>

<link rel="stylesheet" type="text/css" href="style.css">


</head>
<body>


    <marquee width="100%" direction="right"  behavior="alternate"  height="35px"  style="font-size: 25px" class="mr">
        Online Examination Portal ! &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Online Examination Portal ! &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Online Examination Portal !
    </marquee>

<div class="flex"></div>

<div align="center" class="flex1">
    <h1 style="color: red" >Student Register Form</h1>
    <form action="<%= request.getContextPath() %>/RegisterController" method="post">
        <table class="t">
            <tr>
                <td>Name</td>
                <td><input type="text" name="Name" /></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" name="Password" /></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><input type="text" name="Email" /></td>
            </tr>
            <tr>
                <td>Roll No.</td>
                <td><input type="text" name="RollNo" /></td>
            </tr>
            <tr>
                <td>Id</td>
                <td><input type="number" name="idstudents" /></td>
            </tr>
        </table>
        <input type="checkbox"/>By signing up, I agree to the Terms of Use and Privacy Policy.<br><br>
        <input type="submit" value="Register" style="font-size: 15px"/>
        <button > <a href="<%=request.getContextPath() %>/jsp/Login.jsp" >Login</a></button>
        <input type="hidden" name="action" value="register">
    </form>
</div>

</body>
</html>
