package demo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.TreeMap;


public class AjaxDemo {

	public TreeMap<String, String> getData(String empid)
	{
		TreeMap<String, String> tm = new TreeMap<>();
		
		try(Connection con = new Connect().start())
		{
			String sql = "select * from cart where pid=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, empid);
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next())
			{
				tm.put("ename", rs.getString("pqntity"));
				tm.put("salary", rs.getString("price"));
				tm.put("email", rs.getString("product_name"));
				tm.put("mobile", rs.getString("ipadr"));
			
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
		return tm;
	
	}
	
}
