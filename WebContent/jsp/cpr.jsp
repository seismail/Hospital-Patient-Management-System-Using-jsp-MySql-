<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<%
    String pname = request.getParameter("pname");    
    String type = request.getParameter("type");
    String dname = request.getParameter("dname");
    String age = request.getParameter("age");
    String date = request.getParameter("date");
    String med = request.getParameter("med");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/name",
            "root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into cp(pname, age, date, dname,type,med, regdate) values ('" + pname + "','" + age + "','" + date + "','" + dname + "','" + type + "','" + med + "', CURDATE())");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("sp.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("cp.jsp");
    }
%>


