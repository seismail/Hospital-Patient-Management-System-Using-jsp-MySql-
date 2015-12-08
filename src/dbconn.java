import java.sql.Connection;
import java.sql.DriverManager;
import java.sql. PreparedStatement;
import java.sql.ResultSet;

public class dbconn {
	public static void main(String[] args) throws Exception  {
		 Class.forName("com.mysql.jdbc.Driver");
		 Connection conn =DriverManager.getConnection("jdbc:mysql://localhost/name","root","");
		 PreparedStatement statement= conn.prepareStatement("select * from admin");
		 ResultSet result=statement.executeQuery();
		 while(result.next()){
			 
			 System.out.println("User Name:"+result.getString(1)+" "+"Password :"+result.getString(2));
		 }
	}

}
