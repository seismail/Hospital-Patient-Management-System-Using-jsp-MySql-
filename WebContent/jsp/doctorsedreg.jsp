<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<%
    String dname = request.getParameter("dname");    
    String type = request.getParameter("type");
    String day = request.getParameter("day");
    String time = request.getParameter("time");
    String fees = request.getParameter("fees");
    String mob = request.getParameter("mob");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/name",
            "root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into dsedreg(dname, type, day, time, fees,mob, regdate) values ('" + dname + "','" + type + "','" + day + "','" + time + "','" + fees + "','" + mob + "', CURDATE())");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("adminwelcome.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("doctorsed.jsp");
    }
%>


