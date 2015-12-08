<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<%
    String fname = request.getParameter("fname");    
    String room = request.getParameter("room");
    String bed = request.getParameter("bed");
    String type = request.getParameter("type");
    String pid = request.getParameter("pid");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/name",
            "root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into bed(fname, room, bed, type, pid, regdate) values ('" + fname + "','" + room + "','" + bed + "','" + type+ "','" + pid + "', CURDATE())");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("adminwelcome.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("addbed.jsp");
    }
%>
