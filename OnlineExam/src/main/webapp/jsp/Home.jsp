<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    <title>Online Exam</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
  </head>
  <body class="p-3 m-0 border-0 bd-example m-0 border-0">
  
    <!-- Example Code -->
    
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
      <div class="container-fluid">
        <a class="navbar-brand" href="#">Navbar</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="#">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="<%=request.getContextPath() %>/jsp/About.jsp">About Us</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Menu
              </a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="#">Online Syllabus</a></li>
                <li><a class="dropdown-item" href="#">Results</a></li>
                <li><hr class="dropdown-divider"></li>
                <li><a class="dropdown-item" href="#">Examinations</a></li>
              </ul>
            </li>
            <li class="nav-item">
              <a class="nav-link " href="<%=request.getContextPath() %>/jsp/Contact.jsp" >Contact Us</a>
            </li>
          </ul>
          <form class="d-flex" role="search">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success" type="submit">Search</button>
          </form>
          <button type="button" class="btn btn-outline-danger" style="margin: 1px;"><a href="<%=request.getContextPath() %>/jsp/Registration.jsp" >Sign Up</a></button>
          <button type="button" class="btn btn-outline-warning" ><a href="<%=request.getContextPath() %>/jsp/Login.jsp" >Login</a></button>
        </div>
      </div>
    </nav>
    
    <!-- End Example Code -->

    <!--container-->
      
    <div  style="height: 650px" id="carouselExampleCaptions" class="carousel slide" >
   
    
      <div class="carousel-indicators" style="width: 100px" style="position: relative;" >
      
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        
        
      </div>
      
       <marquee width="100%" direction="right"  behavior="alternate" style="color: red;  background-color: #cae7df; height: 30px;"  style="margin-top: -6px;"  class="mr">
        chhatrapati Shivaji University,Kolhapur ! &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; chhatrapati Shivaji University,Kolhapur ! &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; chhatrapati Shivaji University,Kolhapur !
       </marquee>
       
      <div class="carousel-inner">
       
        <div class="carousel-item active">
           <img src="CSU.jpg " class="d-block w-100 " alt="...">   
        </div>
    
      </div>
      
   </div>

   <footer
        style=" height: 100px; border: 3px solid black; margin: 3px; background-color: black;text-align: center; color: white;margin-top: 130px;">
        <h5 style="margin-top: 30px;">Copy Rights @Shivaji University</h5>
    </footer>

   


  </body>
</html>