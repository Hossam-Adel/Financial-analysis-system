package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import dto.User;

public class Logincheck {
	
	public User login(String email, String password) throws SQLException {
		Connector f = new Connector();
		User user = new User();
		Connection conn = f.connect();
		java.sql.Statement stmt = conn.createStatement();
		String query = "select * from user where email='"+email+"'";
		try {
			boolean check=false;

			ResultSet rs = stmt.executeQuery(query);
		
			while (rs.next()) {
				check = true;
				
			//	System.out.println(result + "while");
				String dbpass = rs.getString("password");
				String dbemail = rs.getString("email");
			
					if (dbpass.equals(password) && dbemail.equals(email)) {
						
						user.setId(rs.getInt("id"));
						user.setFname(rs.getString("fname"));
						user.setLname("lname");
						user.setCountry("country");
						user.setJob("job");
						user.setPassword(dbpass);
						user.setEmail(rs.getString("email"));
	
					}
	
					else {
						user = null;
	
					}
				
			}

			if(!check)
			{
				
				
					user = null;
				
			}
			
			
		

			rs.close();
			stmt.close();
			conn.close();

			return user;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("error");
	
			return null;
		}

	}
	
	
	
}
