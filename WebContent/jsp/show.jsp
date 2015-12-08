<%@ page import="java.sql.*" %>

<% Class.forName("com.mysql.jdbc.Driver"); %>

<HTML>
    <HEAD>
        <TITLE>The tableName Database Table </TITLE>
    </HEAD>

    <BODY>
        <H1>The tableName Database Table </H1>

        <% 
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/name","root","");

            Statement statement = connection.createStatement() ;
            ResultSet resultset = 
                statement.executeQuery("select * from members") ; 
        %>

        <TABLE BORDER="1">
            <TR>
                <TH>ID</TH>
                <TH>FName</TH>
                <TH>LName</TH>
                <TH>Email</TH>
                <TH>User Name</TH>
                  
            </TR>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getString(2) %></TD>
                <TD> <%= resultset.getString(3) %></TD>
                <TD> <%= resultset.getString(4) %></TD>
                <TD> <%= resultset.getString(5) %></TD>
           
            </TR>
            <% } %>
        </TABLE>
    </BODY>
</HTML>
