
<%@page import="com.dao.DBconnection"%>
<%@page import="com.helper.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dao.DBconnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Users</title>

<link rel="stylesheet" type="text/css" href="style.css">

<style type="text/css">
table, th, td {
  border: 1px solid;
  padding: 7px;
}

</style>

</head>
<body class="v">

<marquee width="100%" direction="right" height="100px"  behavior="alternate"  style="font-size: 25px"  class="mr">Online Examination Portal ! &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Online Examination Portal ! &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Online Examination Portal !</marquee>

<div class="u">
<h1 style="color: red">Registered Users</h1>
    <table class="tr">
        <tr >
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Roll No</th>
            <th>Score</th>
            <th>Result</th>
            <!-- Add more columns as needed -->
        </tr>
       <% ArrayList userList = new ArrayList();
        userList = (ArrayList)DBconnection.getAllUsers();%>
        <%for(int i=0;i<userList.size();i++) {
        
        	User user =(User)userList.get(i);
        	
        	%>
            <tr>
                <td><%= user.getId() %></td>
                <td><%= user.getName() %></td>
                <td><%= user.getEmail() %></td>
                <td><%= user.getRollNo() %></td>
                <td><%= user.getScore() %></td>
                <td><%= user.getResult() %></td>
                <!-- Add more columns as needed -->
            </tr>
        <% } %>
    </table>
</div>
</body>
</html>