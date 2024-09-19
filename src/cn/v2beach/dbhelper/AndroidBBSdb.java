package cn.v2beach.dbhelper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Set;
import java.util.TreeSet;

import cn.v2beach.dbconnector.DatabaseConnector;
import cn.v2beach.model.AndroidBBS;

public class AndroidBBSdb {

	int bbid;
	String nickname;
	int bbtype;
	String bbtitle;
	String bbtime;
	String longitude;
	String latitude;
	String description;
	String other;
	
	Connection connection=DatabaseConnector.getConnect();
	PreparedStatement statement;
	ResultSet resultSet;
	
	public Set<AndroidBBS> getAllBBS(){//暂时是查全部的
		connection=DatabaseConnector.getConnect();
		Set<AndroidBBS> bbsSet=new TreeSet<AndroidBBS>(); 
		try {
			statement=connection.prepareStatement("select * from android_bbs");
			resultSet=statement.executeQuery();				
			while (resultSet.next()) {
				bbid=resultSet.getInt("bbid");
				nickname=resultSet.getString("nickname");
				bbtype=resultSet.getInt("bbtype");
				bbtitle=resultSet.getString("bbtitle");
				bbtime=resultSet.getString("bbtime");
				longitude=resultSet.getString("longitude");
				latitude=resultSet.getString("latitude");
				description=resultSet.getString("description");
				other=resultSet.getString("other");
				AndroidBBS androidBBS=new AndroidBBS(bbid, nickname, bbtype, bbtitle, bbtime, longitude, latitude, description, other);
				bbsSet.add(androidBBS);
			}
			return bbsSet;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		} finally {
			DatabaseConnector.release(connection, statement, resultSet);
			connection=null;
			statement=null;
			resultSet=null;
		}
	}
	
	public boolean addBBS(String nickname, int bbtype, String bbtitle, String bbtime, String longitude, String latitude, String description, String other) {
		connection=DatabaseConnector.getConnect();
		try {
			statement = connection.prepareStatement("insert into android_bbs values(?, ?, ?, ?, ?, ?, ?, ?, ?);");
			statement.setInt(1, 0); //auto_increment
			statement.setString(2, nickname);
			statement.setInt(3, bbtype);
			statement.setString(4, bbtitle);
			statement.setString(5, bbtime);
			statement.setString(6, longitude);
			statement.setString(7, latitude);
			statement.setString(8, description);
			statement.setString(9, other);
			statement.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		} finally {
			DatabaseConnector.release(connection, statement, resultSet);
			connection=null;
			statement=null;
			resultSet=null;
		}
	}
	
}
