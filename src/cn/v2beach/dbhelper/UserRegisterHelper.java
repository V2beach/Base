package cn.v2beach.dbhelper;

import java.sql.Connection;
import java.sql.PreparedStatement;

import cn.v2beach.dbconnector.DatabaseConnector;

public class UserRegisterHelper {
	Connection connection=DatabaseConnector.getConnect();
	PreparedStatement statement;
	public boolean signUp(String username,String password,String nickname){
		try{
			UserCodeChecker userCodeChecker=new UserCodeChecker();
			userCodeChecker.setPasscode(password);
			statement=connection.prepareStatement("insert into logInfo values(?,?,?,?,?)");
			statement.setInt(1, 0); //auto_increment
			statement.setString(2, username);
			statement.setString(3, password);
			statement.setString(4, nickname);
			statement.setString(5, "user"); //Not root;
			statement.executeUpdate();
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
}
