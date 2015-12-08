<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>

<% Class.forName("com.mysql.jdbc.Driver"); %>
<!DOCTYPE HTML>
<html>

<head>
  <title>Doctors page</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <link rel="stylesheet" type="text/css" href="../css/menu.css" />
  <link rel="stylesheet" type="text/css" href="../css/style.css" />
  
         <script>
         window.print();
         </script>
         
       <script type="text/javascript">
        function alertPresentValue(){
        	
        	alert(window.opener.document.forms['text'].atextfield.value);
        }
       
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
          
        <!--  <a href="#" onclick="javascript:window.print();">Print Prescription</a>   -->
         
 
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
            <h6><font color="blue"><b>Your Visited Doctor's Name:</b></font></h6>
            
                            <%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="doctorlogin.jsp">Please Login</a>
<%} else {
%>
<h6><strong>Dr.<%=session.getAttribute("userid")%></strong></h6>
<%
    }
%>
          </div>
          <div class="sidebar_base"></div>
        </div>
      
     
      </div>
      <div id="content">
    
        <h1 align="left"><font color="blue"><b>Prescription Details:</b></font></h1>
       
          <% 
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/name","root","");

            Statement statement = connection.createStatement() ;
            ResultSet resultset = 
                statement.executeQuery("select * from cp") ; 
        %>
      

     
        <table border="" style="width:600px">
      
            <tr>
                <th>Patient Name:</th>
                <th>Age:</th>
                <th> Date:</th>
                <th>Disease Name:</th>
                <th>Medicine</th>
                <th>Medicine</th>
                  
            </tr>
            
            <% while(resultset.next()){ %>
            
            <tr>
               
                <td> <%= resultset.getString(2) %></td>
                <td> <%= resultset.getString(3) %></td>
                <td> <%= resultset.getString(4) %></td>
                <td> <%= resultset.getString(5) %></td>
                <td> <%= resultset.getString(6) %></td>
                 <td> <%= resultset.getString(7) %></td>
           
            </tr>
              
            <% } %>
            
         
            
          
            
        </table>
        
      
    
      </div>
    </div>
   
  </div>
</body>
</html>
    