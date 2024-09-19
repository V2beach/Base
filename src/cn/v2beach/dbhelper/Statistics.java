package cn.v2beach.dbhelper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import cn.v2beach.dbconnector.DatabaseConnector;

public class Statistics {
	Connection connection=DatabaseConnector.getConnect();
	PreparedStatement statement;
	ResultSet resultSet;
	public Integer getTotalStatistics() {
		try {
			statement=connection.prepareStatement("select statistics from statistics where statisticsType=\"total\" ");
			resultSet=statement.executeQuery();
			resultSet.next();
			Integer totalStatistics=resultSet.getInt("statistics");
			return totalStatistics;
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
	public boolean setTotalStatistics(Integer totalStatistics) {
		try {
			statement=connection.prepareStatement("update statistics set statistics="+totalStatistics+" where statisticsType=\"total\"; ");
			statement.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		} finally {
			DatabaseConnector.release(connection, statement, resultSet);
			connection=null;
			statement=null;
		}
	}
}
