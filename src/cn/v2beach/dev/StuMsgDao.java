package cn.v2beach.dev;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import cn.v2beach.dbconnector.DatabaseConnector;

public class StuMsgDao {
	Connection connection=DatabaseConnector.getConnect();
	PreparedStatement statement;
	ResultSet resultSet;
	public boolean checkCode(String stucode,String stuname,String stumajor,String stugpa,String stupwd) {
		//If (.equals(null)) then response.sendRedirect("StuMsgError.v").
		if (stucode.equals("")||stuname.equals("")||stumajor.equals("")||stugpa.equals("")||stupwd.equals(""))
			return false;
		try {
			statement=connection.prepareStatement("select * from stuMsg where stucode=? ");
			statement.setString(1, stucode);
			resultSet=statement.executeQuery();
			if (resultSet.next())
				return false;
			statement=connection.prepareStatement("insert into stuMsg values(?,?,?,?,?,?)");
			statement.setInt(1, 0);
			statement.setString(2, stucode);
			statement.setString(3, stuname);
			statement.setString(4, stupwd);
			statement.setString(5, stumajor);
			statement.setString(6, stugpa);
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
	public Set<Student> searchAll(String cho) {
		String stuname=null;
		String stucode=null;
		String stumajor=null;
		String stugpa=null;
		String stupwd=null;
		try {
			Set<Student> stuSet=null;
			if (cho==null)
				stuSet=new TreeSet<Student>(new DefaultComparator());
			else if (cho.equals("code"))
				stuSet=new TreeSet<Student>();
			else if (cho.equals("name"))
				stuSet=new TreeSet<Student>(new NameComparator());
			else if (cho.equals("gpa"))
				stuSet=new TreeSet<Student>(new GpaComparator());
			else throw new Exception();
			statement=connection.prepareStatement("select * from stuMsg");
			resultSet=statement.executeQuery();
			while (resultSet.next()) {
				stuname=resultSet.getString("stuname");
				stucode=resultSet.getString("stucode");
				stumajor=resultSet.getString("stumajor");
				stugpa=resultSet.getString("stugpa");
				stupwd=resultSet.getString("stupwd");
				Student stu=new Student(stuname, stucode, stumajor, stugpa, stupwd);
				stuSet.add(stu);
			}
			return stuSet;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	public boolean deleteStu(String code) {
		return false;
	}
}
