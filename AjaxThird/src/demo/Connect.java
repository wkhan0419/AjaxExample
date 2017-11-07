/*This class deal with the database connection all the common function
 * related to database that will be used in all the forms 
 * will be described here*/

package demo;

/*packages requied to establish connection with the database*/
import java.sql.Connection;
import java.sql.DriverManager;

public class Connect {
	
	//method to establish connection
	public Connection start()
	{
		Connection con=null;
		
		try
		{	
			//loading the class		
			Class.forName("com.mysql.jdbc.Driver");
			
			//establishing connection  
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/zappy","root","");
		
		//end of start method try block
		}
		catch(Exception e)
		{
			System.out.println("class Connect.start() exception"+e);
		}
		
		//returning object of Connection class
		return con;
		
	//end of Connection start() 
	}
	
	/*static method to establish mysql connection*/
	public static Connection estConnection() throws ClassNotFoundException, Exception
	{
		Connection con=null;
		
		//loading the class		
		Class.forName("com.mysql.jdbc.Driver");
		
		//establishing connection  
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/zappy","root","root");
	
	
	//returning object of Connection class
	return con;
	}//end of estConnection() throws ClassNotFoundException, Exception
	
//end of class Connect 
}
