<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    try{
    Class.forName("com.mysql.jdbc.Driver");
    }catch (ClassNotFoundException e){
    	out.println("Where is your mysql jdbc driver");
    	e.printStackTrace();
    	return;
    	
    }
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/name","root","");
         
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from doctorlogin where uname='" + userid + "' and pass='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("doctorhome.jsp");
    } else {
        out.println("<h1>Invalid password <a href='doctorlogin.jsp'>try again</a></h1>");
    }
%>