package model;


import java.sql.Connection;
import java.sql.DriverManager;




public class Connector {

	static Connection con ;
	/**
	 * this method opens connection with database server
	 * @author Hossam
	 *returns connection object
	 */
	public Connection connect() {
		try {

			Class.forName("com.mysql.jdbc.Driver"); 
			final Connection con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/mydb?", "Hossam", "root");
			return con;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
}