package services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import beans.User;
import utils.Db;

public class UserService {

	public int register(String email, String pass) {
		String sql = "insert into user(email, password) values (?,?);";
		int id = 0;
		
		try(
			Connection conn = Db.open();
			PreparedStatement stmt = conn.prepareStatement(sql, java.sql.Statement.RETURN_GENERATED_KEYS);
			)
		{
			stmt.setString(1, email);
			stmt.setString(2, pass);
			stmt.executeUpdate();
			
			ResultSet res = stmt.getGeneratedKeys();
			if (res.next()) {
				id = res.getInt(1);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return id;
	}
	
	public User login(String email, String pass) { 
		String sql = "SELECT * FROM user WHERE email = ? AND password = ?;";
	    User user = null;
	
	    try (
	        Connection conn = Db.open();
	        PreparedStatement stmt = conn.prepareStatement(sql);
	    	) 
	    {
	        stmt.setString(1, email);
	        stmt.setString(2, pass);
	
	        ResultSet res = stmt.executeQuery();
	        if (res.next()) {
	            user = new User(
	            	res.getInt("id"),
	            	res.getString("email"),
	            	res.getString("password")
	            );
	        }
	    } 
	    
	    catch (Exception e) {
	        e.printStackTrace();
	    }
	
	    return user;
	}
		
	
	
}
