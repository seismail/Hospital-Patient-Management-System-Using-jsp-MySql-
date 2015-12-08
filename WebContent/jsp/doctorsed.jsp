<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>

<head>
  <title>Add Doctors page</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <link rel="stylesheet" type="text/css" href="../css/menu.css" />
   <link rel="stylesheet" type="text/css" href="../css/style.css" />
</head>

<body>
  <div id="main">
    <div id="header">
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
          <h1><a href="index.html">Hospital<span class="logo_colour">...care</span></a></h1>
          <h2>We Care About You...</h2>
       
        </div>
      </div>
      <div id="menubar">
        <ul id="menu">
          <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
          <li><a href="adminindex.jsp">Home</a></li>
          <li><a href="adddoctor.jsp">Add Doctor</a></li>
          <li><a href="addpatient.jsp">Add Patient</a></li>
          <li><a href="addstore.jsp">Add Stores</a></li>
          <li><a href="addbed.jsp">Add Bed</a></li> 
        
          <li><a href="showmember.jsp">Show Member</a></li> 
        </ul>
      </div>
    </div>
   
    <div id="content_header"></div>
    
    <div id="site_content">
    
	  <div id="sidebar_container">
        <div class="sidebar">
        
          <div class="sidebar_top"></div>
     
          
          
          <div class="sidebar_item">
            <!-- insert your sidebar items here -->
            <h6><font color="blue"><b>Welcome To Admin Account:</b></font></h6>
            
                            <%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="adminlogin.jsp">Please Login</a>
<%} else {
%>
<h6><strong>Admin User Name:<%=session.getAttribute("userid")%><br>
<a href='logout.jsp'>Log out</a></strong></h6>
<%
    }
%>
          </div>
          <div class="sidebar_base"></div>
        </div>
        <div class="sidebar">
          <div class="sidebar_top"></div>
          <div class="sidebar_item">
            <h3>Useful Links</h3>
            <ul>
              <li><a href="doctorsed.jsp">Please Add Doctor Schedule</a></li>
              <li><a href="#">link 2</a></li>
              <li><a href="#">link 3</a></li>
              <li><a href="#">link 4</a></li>
            </ul>
          </div>
          <div class="sidebar_base"></div>
        </div>
        <div class="sidebar">
          <div class="sidebar_top"></div>
          <div class="sidebar_item">
            <h3>Search</h3>
            <form method="post" action="#" id="search_form">
              <p>
                <input class="search" type="text" name="search_field" value="Enter keywords....." />
                <input name="search" type="image" style="border: 0; margin: 0 0 -9px 5px;" src="../images/search.png" alt="Search" title="Search" />
              </p>
            </form>
          </div>
          <div class="sidebar_base"></div>
        </div>
      </div>
      <div id="content">
        
         <h1><font color="blue">Please Add Doctors Schedule:</font></h1><br>
  <form method="post" action="doctorsedreg.jsp">
    <input type="text" name="dname" placeholder="Doctor Name" required><br><br>
 <select name="type">
  <option>Specialist</option>
  <option>Medicine</option>
  <option>gynecologist</option>
  <option>Dentist</option>
  <option>Child Specialist</option>
  <option>Heart Specialist</option>
  
</select>
<br><br>
 <select name="day">
  <option>Presented Day</option>
  <option>Saturday-Monday</option>
  <option>Tuesday-Thursday</option>
  <option>Friday</option>
  <option>All Days</option>
  <option>All Night</option>
  
</select>
<br><br>
   <select name="time">
  <option>Presented Time</option>
  <option>2Pm-10Pm</option>
  <option>10Am-8Pm</option>
  <option>8Am-10Pm</option>
  <option>10Pm-10Am</option>
  
</select>
<br><br>
      <input type="text" name="fees" placeholder="Add Fees" required><br><br>
 
        <input type="text" name="mob" placeholder="Mobile No" required><br><br>
    
    <input type="submit" name="login" class="login login-submit" value="Add">
  </form>
      </div>
    </div>
    <div id="content_footer"></div>
    <div id="footer">
      <p><a href="success.jsp">Home</a> | <a href="doctor.jsp">Doctor</a> | <a href="patient.jsp">Patient</a> | <a href="store.jsp">Stores</a>| <a href="showbed.jsp">Ward</a></p>
      <p>Copyright &copy; Hospital ...Care | <a href="success.jsp">Ismail</a></p>
    </div>
  </div>
</body>
</html>