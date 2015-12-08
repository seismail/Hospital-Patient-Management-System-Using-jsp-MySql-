<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE HTML>
<html>

<head>
  <title>Doctor Home page</title>
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
          
          <li ><a href="cp.jsp">Create Prescription</a></li>
          <li><a href="sp.jsp">Show Prescription </a></li> 
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
            <h6><font color="blue"><b>Welcome To Your Account:</b></font></h6>
            
                            <%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%} else {
%>
<h6><strong>Doctor Name :<%=session.getAttribute("userid")%><br>
<a href='logout.jsp'>Log out</a></strong></h6>
<%
    }
%>
          </div>
          <div class="sidebar_base"></div>
        </div>
      </div>
      <div id="content">
            <h1><font color="blue">---Doctor's Home Page---</font></h1>
        <h1><font color="blue">Welcome To Hospital Patient Management System</font></h1>
     
        <ul>
          <li>Do you want a doctors???</li>
          <li>Do you want to good treatment???</li>
          <li>Are you patient???</li>
        </ul>
         <h1><font color="blue">Please visit our system we hope it's help to you</font></h1>
         <p>
           The word health means different things to different people, depending on the situation. If somebody says "I was worried about my husband's health when he climbed Mt. Everest", it is clear that the woman is referring to her husband's physical health, possibly his heart, skin (frostbite) 
           and risk of developing hypothermia (when the body's temperature drops too low.<p>

          
         </p>
      </div>
    </div>
    <div id="content_footer"></div>
    <div id="footer">
      
    <p>Copyright &copy; Hospital ...Care | <a href="index.jsp">Ismail</a></p>
    </div>
  </div>
</body>
</html>
