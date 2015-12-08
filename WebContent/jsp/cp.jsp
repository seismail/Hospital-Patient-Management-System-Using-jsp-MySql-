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
     <script type="text/javascript">
         var sp=window.open('sp.jsp');
         if(window.focus) sp.focus();
         return false;
         
         
         </script>
   
   
   
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
          
          <li class="selected"><a href="cp.jsp">Create Prescription</a></li>
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
             <h1><font color="blue">Please Create A Prescription:</font></h1><br>
  <form method="post" action="cpr.jsp">
    <input type="text" name="pname" placeholder="Please Enter Patient Name" required><br><br>
    
      <input type="text" name="age" placeholder="Please Enter Age" required><br><br> 
        <input type="text" name="date" placeholder="Please Enter Date" required><br><br>
       
      <select name="type">
        <option>Please Select Medicine</option>
        <option>Napa</option>
        <option>Napa Extra</option>
        <option>Seclo</option>
        <option>Histacin</option>
    </select>
    <input type="text" name="med" placeholder="Please Enter Medicine" required><br><br>
 <br><br> 
        <input type="text" name="dname" placeholder="Disease Name" required><br><br> 
        <input type="submit" name="login" class="login login-submit" value="Add">
  </form>
      </div>
    </div>
    <div id="content_footer"></div>
    <div id="footer">
      
    <p>Copyright &copy; Hospital ...Care | <a href="index.jsp">Ismail</a></p>
    </div>
  </div>
</body>
</html>
