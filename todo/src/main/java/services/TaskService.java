package services;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import beans.Task;
import utils.Db;

public class TaskService {
	
	public ArrayList<Task> select(int user_id){
		
		ArrayList<Task> tasks = new ArrayList<>();
		String sql = "SELECT * FROM task WHERE user_id = ?";
		
		try(
			Connection conn = Db.open();
		    PreparedStatement stmt = conn.prepareStatement(sql);
		){
			stmt.setInt(1, user_id);
	        ResultSet rs = stmt.executeQuery();
	        
	        while (rs.next()) {
	        	Task a = new Task(
	        			rs.getInt("id"),
	        			rs.getString("title"),
	        			rs.getString("status"),
	        			rs.getDate("deadline").toLocalDate(),
	        			rs.getInt(user_id)
		          ); 
	        	tasks.add(a);
	        }
		}
	    catch(Exception e) {
	    	e.printStackTrace();
	    }
		
		return tasks;
	}

	public int insert(Task task) {
		String sql = "insert into user(title, status, deadline, user_id) values (?,?,?,?);";
		int id = 0;
		
		try(
			Connection conn = Db.open();
			PreparedStatement stmt = conn.prepareStatement(sql, java.sql.Statement.RETURN_GENERATED_KEYS);
			)
		{
			stmt.setString(1, task.getTitle());
			stmt.setString(2, task.getStatus());
			stmt.setDate(3, Date.valueOf(task.getDeadline()));
			stmt.setInt(4, task.getUser_id());
			
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
	
	public void delete(int id) {
		String sql = "delete from players where id = ?";
		
		try (	Connection conn = Db.open();
				PreparedStatement stmt = conn.prepareStatement(sql);
			) 
		{
			stmt.setInt(1, id);
			stmt.executeUpdate();
			
		} catch (Exception se) {
			se.printStackTrace();
		}
	}
	
}
