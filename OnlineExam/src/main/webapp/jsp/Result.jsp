<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result Page</title>

<link rel="stylesheet" type="text/css" href="style.css">

</head>
<body>

<marquee width="100%" direction="right" height="100px" style="font-size: 25px" class="mr">Online Examination Portal ! &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Online Examination Portal ! &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Online Examination Portal !</marquee>

<div align="center"  class="G">
 
  <h1 style="color: red" >Student Score Card</h1>
  
  <%
    int score = (int) session.getAttribute("score");

	if(score>=4){
		
	
%>
  
    <div class="p"> Result : Pass</div>
<%}
	else {
	%>
	<div class="p"> Result : Fail</div>
	<%} %>
<div class="s">Your Score : <%= score %> out of 10</div>
<!-- Rest of your HTML and CSS code -->
     
 
 
 </div>

<button class="btn"> <a href="<%=request.getContextPath() %>/jsp/ViewUsers.jsp" >See All Users Data</a></button>

</body>
</html>
