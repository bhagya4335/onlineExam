<% 
    String Name = (String) session.getAttribute("Name");
    
    if (Name == null) {
        response.sendRedirect(request.getContextPath() + "/jsp/Registration.jsp");
    }
%>
<!-- Rest of your HTML and CSS code -->

<!DOCTYPE html>
 
<html>
<head>
<title>Online Exam Portal</title>

<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body class="success">
<marquee width="100%" direction="right" height="35px"  behavior="alternate"  style="font-size: 25px" class="mr">Online Examination Portal ! &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Online Examination Portal ! &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Online Examination Portal !</marquee>

 
 <div class="cnt"><h2 align="center">Exam Start</h2></div>

<div class="box" align="justify">
<h3 style="margin-left: 100px" >Answer the following questions (1 marks for each correct answer)</h3>
<form  align="justify"  style="margin-left: 150px" action="<%= request.getContextPath() %>/RegisterController" method="post" id="submitTest" class="form">
1.Who invented Java Programming?<br/>
<input type="radio" name="q1" value="a">Guido van Rossum<br/>
<input type="radio" name="q1" value="b">James Gosling<br/>
<input type="radio" name="q1" value="c">Dennis Ritchie<br/>
<input type="radio" name="q1" value="d">Bjarne Stroustrup<br/>
<br/><br/>
2.Which statement is true about Java?<br/>
<input type="radio" name="q2" value="a"> Java is a sequence-dependent programming language<br/>
<input type="radio" name="q2" value="b"> Java is a code dependent programming language<br/>
<input type="radio" name="q2" value="c">Java is a platform-dependent programming language<br/>
<input type="radio" name="q2" value="d">Java is a platform-independent programming language<br/>
<br/><br/>
3.Which component is used to compile, debug and execute the java programs?<br/>
<input type="radio" name="q3" value="a">JRE<br/>
<input type="radio" name="q3" value="b">JIT<br/>
<input type="radio" name="q3" value="c">JDK<br/>
<input type="radio" name="q3" value="d">JVM<br/>
<br/><br/>
4. Which one of the following is not a Java feature?<br/>
<input type="radio" name="q4" value="a">Object-oriented<br/>
<input type="radio" name="q4" value="b">Use of pointers<br/>
<input type="radio" name="q4" value="c">Portable<br/>
<input type="radio" name="q4" value="d">Dynamic and Extensible<br/>
<br/><br/>
5.Which of these cannot be used for a variable name in Java?<br/>
<input type="radio" name="q5" value="a">identifier and keyword<br/>
<input type="radio" name="q5" value="b"> identifier<br/>
<input type="radio" name="q5" value="c"> keyword<br/>
<input type="radio" name="q5" value="d">none of the mentioned<br/>
<br/><br/>
6.What is the extension of java code files?<br/>
<input type="radio" name="q6" value="a"> .js<br/>
<input type="radio" name="q6" value="b">.txt<br/>
<input type="radio" name="q6" value="c">.class<br/>
<input type="radio" name="q6" value="d">.java<br/>
<br/><br/>
7.Which environment variable is used to set the java path?<br/>
<input type="radio" name="q7" value="a">MAVEN_Path<br/>
<input type="radio" name="q7" value="b">JavaPATH<br/>
<input type="radio" name="q7" value="c">JAVA<br/>
<input type="radio" name="q7" value="d"> JAVA_HOME<br/>
<br/><br/>
8.Which of the following is not an OOPS concept in Java?<br/>
<input type="radio" name="q8" value="a">Polymorphism<br/>
<input type="radio" name="q8" value="b">Inheritance<br/>
<input type="radio" name="q8" value="c">Compilation<br/>
<input type="radio" name="q8" value="d"> Encapsulation<br/>
<br/><br/>
9.What is not the use of <strong>this</strong> keyword in Java?<br/>
<input type="radio" name="q9" value="a"> Referring to the instance variable when a local variable has the same name<br/>
<input type="radio" name="q9" value="b">Passing itself to the method of the same class<br/>
<input type="radio" name="q9" value="c">Passing itself to another method<br/>
<input type="radio" name="q9" value="d">Calling another constructor in constructor chaining<br/>
<br/><br/>
10. Which exception is thrown when java is out of memory?<br/>
<input type="radio" name="q10" value="a">MemoryError<br/>
<input type="radio" name="q10" value="b">OutOfMemoryError<br/>
<input type="radio" name="q10" value="c">MemoryOutOfBoundsException<br/>
<input type="radio" name="q10" value="d">MemoryFullException<br/>
<br/><br/>

<input type="hidden" name="action" value="submitTest" >
<input type="submit" value="Submit Answers"  style="margin-left: 180px">

</form>

</div>

</body>
</html>
