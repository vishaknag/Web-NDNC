package classes;
import java.io.*;
import java.sql.*;
public class DBAccess
{
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	int i=0;
	public DBAccess()
	{
		try
		{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}

	public void DBCon()
	{
		try
		{
		 con=DriverManager.getConnection("jdbc:odbc:vishak");
		 st=con.createStatement();
		 System.out.println(con);
	    }

		catch(Exception e)
		{
		System.out.println(e);
		}
	 }
	
public int DBUpdate(String str)
	{
		try
		{
		i=st.executeUpdate(str);
		}
		catch(Exception e)
		{
		System.out.println(e);
		}
	return(i);
	}

public ResultSet Fetch(String str)
	{
		try
		{
		rs=st.executeQuery(str);
		}
		catch(Exception e)
		{
		System.out.println(e);
		}
		return(rs);
	}
}	