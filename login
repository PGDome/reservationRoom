package roomReservationSystem;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class loginDAO {
	private String empName;
	public boolean verifyLogin(String empID,String pass)
	{
	    Connection conn = connectToDB.getConnection();
	    try
	    {
	      Statement stmt = conn.createStatement();
	      ResultSet rs = stmt.executeQuery("SELECT empName FROM employee where empID='"+empID+"' and password='"+pass+"' ");
	      if (rs.next()) {
	    	  this.empName=rs.getString("empName");
	    	  return true;
	      }	     
	    }
	    catch (SQLException se)
	    {
	      se.printStackTrace();
	    }
	    return false;
	 }
	
	
	public String getEmpName(){
		return this.empName;
	}

}
