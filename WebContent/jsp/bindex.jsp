<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE HTML>
<html>

<head>
  <title>User Home page</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <link rel="stylesheet" type="text/css" href="../css/menu.css" />
  
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
          <li class="selected"><a href="bindex.jsp">Home</a></li>
          <li ><a href="adminlogin.jsp">Administrative Log In</a></li>
          <li ><a href="doctorlogin.jsp">Doctors Log In</a></li>
          <li><a href="reg.jsp">Register</a></li>
          <li><a href="index.jsp">Log In</a></li>
        </ul>
      </div>
    </div>
   
   
    
    <div id="site_content">
    
	  <div id="sidebar_container">
        <div class="sidebar">
        <div class="sidebar_top"></div>
          <div class="sidebar_item">
            <!-- insert your sidebar items here -->
            <h3>Latest News</h3>
            <h4>New Website Launched</h4>
            <h5>February 1st, 2014</h5>
            <p>2014 sees the redesign of our website. Take a look around and let us know what you think.<br /><a href="#">Read more</a></p>
          </div>
          <div class="sidebar_base"></div>
        
          
        </div>
        <div class="sidebar">
          <div class="sidebar_top"></div>
          <div class="sidebar_item">
            <h3>Useful Links</h3>
            <ul>
                
              <li><a href="#">link 1</a></li>
            </ul>
          </div>
          <div class="sidebar_base"></div>
        </div>
        <div class="sidebar">
          <div class="sidebar_top"></div>
          <div class="sidebar_item">
            <h3>Search User Id:</h3>
            <form method="post" action="../Java Resource/src/Search" name="frm" id="search_form">
              <p>
                <input class="search" type="text"  name="pid" id="pid" value="Enter User Name" />
                <input name="submit" type="image" style="border: 0; margin: 0 0 -9px 5px;" src="../images/search.png" alt="Search" title="Search" />
              </p>
            </form>
          </div>
          <div class="sidebar_base"></div>
        </div>
      </div>
      <div id="content">
        
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

          On the other hand, if you hear the phrase "With all these deadlines, presentations and working weekends, I wonder what the effect will be on her health," most likely the word "health" refers more to mental health than physical health (although the two are often linked).<p>

          The words "health" or "healthy" can also be used in non-medical contexts. For example "A healthy economy needs an ideal GDP growth rate that is sustainable, one that remains in the expansion phase of the business cycle as long as possible."<p>

          The English word "health" comes from the Old English word hale, meaning "wholeness, being whole, sound or well,". Hale comes from the Proto-Indo-European root kailo, meaning "whole, uninjured, of good omen". Kailo comes from the Proto-Germanic root khalbas, meaning "something divided".
         
         </p>
      </div>
    </div>
    <div id="content_footer"></div>
    <div id="footer">
     
      <p>Copyright &copy; Hospital ...Care | <a href="bindex.jsp">Ismail</a></p>
    </div>
  </div>
</body>
</html>
