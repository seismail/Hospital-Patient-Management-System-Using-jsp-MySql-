<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<%
    String pname = request.getParameter("pname");    
    String type = request.getParameter("type");
    String dname = request.getParameter("dname");
    String adname = request.getParameter("adname");
    String mob = request.getParameter("mob");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/name",
            "root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into patient(pname, type, dname, adname, mob, regdate) values ('" + pname + "','" + type + "','" + dname + "','" + adname + "','" + mob + "', CURDATE())");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("adminwelcome.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("addpatient.jsp");
    }
%>


