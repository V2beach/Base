package cn.v2beach.dbhelper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Set;
import java.util.TreeSet;

import cn.v2beach.dbconnector.DatabaseConnector;
import cn.v2beach.model.Music;

public class MusicListDao {
	Integer songid;
	String nickname;
	String songname;
	String songdate;
	Integer userid;
	
	Connection connection=DatabaseConnector.getConnect();
	PreparedStatement statement;
	ResultSet resultSet;
	
	public boolean addUncompleted(Integer userid,String songname,String nickname,String songdate){
		connection=DatabaseConnector.getConnect();
		if (userid==null||songname.equals("")||nickname.equals("")||songdate.equals(""))
			return false;
		try {
			statement=connection.prepareStatement("insert into uncompletedMusic values(?,?,?,?,?)");
			statement.setInt(1, 0);
			statement.setString(2, nickname);
			statement.setString(3, songname);
			statement.setString(4, songdate);
			statement.setInt(5, userid);
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
	public boolean addCompleted(Integer userid,String songname,String nickname,String songdate) {
		connection=DatabaseConnector.getConnect();
		if (userid==null||songname.equals("")||nickname.equals("")||songdate.equals(""))
			return false;
		try {
			statement=connection.prepareStatement("insert into completedMusic values(?,?,?,?,?)");
			statement.setInt(1, 0);
			statement.setString(2, nickname);
			statement.setString(3, songname);
			statement.setString(4, songdate);
			statement.setInt(5, userid);
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
	public Set<Music> searchMusic(String table) {
		connection=DatabaseConnector.getConnect();
		if (table.equals(""))
			return null;
		Set<Music> musicSet=new TreeSet<Music>(); 
		try {
			if (table.equals("completedMusic"))
				statement=connection.prepareStatement("select * from completedMusic");
			else
				statement=connection.prepareStatement("select * from uncompletedMusic");
			resultSet=statement.executeQuery();
			while (resultSet.next()) {
				songid=resultSet.getInt("id");
				userid=resultSet.getInt("userid");
				nickname=resultSet.getString("nickname");
				songname=resultSet.getString("songname");
				songdate=resultSet.getString("songdate");
				Music music=new Music(nickname, songname, songdate, userid);
				musicSet.add(music);
			}
			return musicSet;
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
	public Set<Music> searchUncompleted() {
		return searchMusic("uncompletedMusic");
	}
	public Set<Music> searchCompleted() {
		return searchMusic("completedMusic");
	}
	public boolean delUncompleted(Integer userid,String songname,String nickname,String songdate) {
		connection=DatabaseConnector.getConnect();
		if (userid==null||songname.equals(""))
			return false;
		try {
			statement=connection.prepareStatement("delete from uncompletedMusic where userid=? and songname=?");
			statement.setInt(1, userid);
			statement.setString(2, songname);
			statement.executeUpdate();
			
			addCompleted(userid, songname, nickname, songdate);
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
	public Music getTopOfUncompletedMusic() {
		connection=DatabaseConnector.getConnect();
		try {
			statement=connection.prepareStatement("select * from uncompletedMusic limit 1");
			resultSet=statement.executeQuery();
			resultSet.next();
			System.out.println(resultSet.getString("nickname")+" "+resultSet.getString("songname")+" "+
					resultSet.getString("songdate")+" "+resultSet.getInt("userid"));
			Music music=new Music(
					resultSet.getString("nickname"),resultSet.getString("songname"),
					resultSet.getString("songdate"),resultSet.getInt("userid"));
			return music;
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

}