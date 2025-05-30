package services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import beans.User;
import utils.Db;

public class UserService {

	public int insert(User user) {
		String sql = "insert into user(email, password) values (?,?);";
		int id = 0;
		
		try(
			Connection conn = Db.open();
			PreparedStatement stmt = conn.prepareStatement(sql, java.sql.Statement.RETURN_GENERATED_KEYS);
			)
		{
			stmt.setString(1, user.getEmail());
			stmt.setString(2, user.getPass());
			
			ResultSet res = stmt.getGeneratedKeys();//
			if (res.next()) {
				id = res.getInt(1);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}		
		return id;
	}
	
	
}
