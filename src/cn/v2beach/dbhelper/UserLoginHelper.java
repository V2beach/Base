package cn.v2beach.dbhelper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import cn.v2beach.dbconnector.DatabaseConnector;
import cn.v2beach.model.UserLogin;

public class UserLoginHelper { //No close.
	Connection connection=DatabaseConnector.getConnect();
	PreparedStatement statement;
	public UserLogin checkLogin(String username,String password) {
		try {
			statement=connection.prepareStatement("select * from logInfo where username=? " + " and password=?");
			statement.setString(1, username);
			statement.setString(2, password);
			ResultSet rSet=statement.executeQuery();
			if (rSet.next()) {
				UserLogin login=new UserLogin();
				login.setId(rSet.getInt("id"));
				login.setUsername(rSet.getString("username"));
				login.setPassword(rSet.getString("password"));
				login.setNickname(rSet.getString("nickname"));
				login.setAuthority(rSet.getString("authority"));
				return login;
			}
		} catch (Exception e) {//!
//			System.out.println("WrongInputException");
			System.out.println(e.getMessage());
			e.printStackTrace();
			return null;
		}
		return null;
	}
}
