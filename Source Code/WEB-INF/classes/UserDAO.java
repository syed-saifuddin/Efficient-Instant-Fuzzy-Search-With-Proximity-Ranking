package in.techyari.tutorial.dao;

import in.techyari.tutorial.model.User;
import in.techyari.tutorial.dao.Database;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.PreparedStatement;


public class UserDAO {
	
	public ArrayList<User> getUsers(String s) throws InstantiationException, IllegalAccessException, ClassNotFoundException, SQLException{
		
		ArrayList<User> userList = new ArrayList<User>();
		Database db = new Database();
		Connection connection = db.getConnection();
		
		try{

			PreparedStatement ps = connection.prepareStatement("SELECT * FROM querydata WHERE keywords like ? or author like ?  and rank>=0 ");
			ps.setString(1,"%"+s+"%");
			ps.setString(2,"%"+s+"%");
//						ps.setString(2, "%" +s+"%");

			ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
//System.out.println("in while");
				User user = new User();
				user.setId(rs.getString("rank"));
				user.setName(rs.getString("keywords")+"  |  "+rs.getString("author"));
				userList.add(user);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return userList;
	}
}
