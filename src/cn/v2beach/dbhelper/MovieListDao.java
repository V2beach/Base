package cn.v2beach.dbhelper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Set;
import java.util.TreeSet;

import org.w3c.dom.css.ElementCSSInlineStyle;

import cn.v2beach.dbconnector.DatabaseConnector;
import cn.v2beach.model.Movie;
import cn.v2beach.model.Movie_Review;
import cn.v2beach.model.UserLogin;

public class MovieListDao {

	Integer movieid;
	String moviename;
	String imdbrate;
	String category;
	String country;
	String director;
	String douban;
	String download;
	String intro;
	String language;
	String actor;
	String duration;
	String publishdate;
	
	Connection connection=DatabaseConnector.getConnect();
	PreparedStatement statement;
	ResultSet resultSet;
	
	public Set<Movie> getLatestMoives(int howManyMovies){//-1为全部
		connection=DatabaseConnector.getConnect();
		Set<Movie> movieSet=new TreeSet<Movie>(); 
		try {
			statement=connection.prepareStatement("select * from movie_movies");
			resultSet=statement.executeQuery();
			if (howManyMovies == -1) {				
				while (resultSet.next()) {
					movieid=resultSet.getInt("movieid");
					moviename=resultSet.getString("moviename");
					imdbrate=resultSet.getString("imdbrate");
					category=resultSet.getString("category");
					country=resultSet.getString("country");
					director=resultSet.getString("director");
					douban=resultSet.getString("douban");
					download=resultSet.getString("download");
					intro=resultSet.getString("intro");
					language=resultSet.getString("language");
					actor=resultSet.getString("actor");
					duration=resultSet.getString("duration");
					publishdate=resultSet.getString("publishdate");
					Movie movie=new Movie(movieid, moviename, imdbrate, category, country, director, douban, download, intro, language, actor, duration, publishdate);
					movieSet.add(movie);
				}
			}
			else if (howManyMovies < -1) {
				System.out.println("Movies number can not below -1.");
				return null;
			}
			else {
				while (howManyMovies-- > 0 && resultSet.next()) {
					movieid=resultSet.getInt("movieid");
					moviename=resultSet.getString("moviename");
					imdbrate=resultSet.getString("imdbrate");
					category=resultSet.getString("category");
					country=resultSet.getString("country");
					director=resultSet.getString("director");
					douban=resultSet.getString("douban");
					download=resultSet.getString("download");
					intro=resultSet.getString("intro");
					language=resultSet.getString("language");
					actor=resultSet.getString("actor");
					duration=resultSet.getString("duration");
					publishdate=resultSet.getString("publishdate");
					Movie movie=new Movie(movieid, moviename, imdbrate, category, country, director, douban, download, intro, language, actor, duration, publishdate);
					movieSet.add(movie);
				}
			}
			return movieSet;
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
	
	public int getPagesGenerationStartPosition() {
		connection=DatabaseConnector.getConnect();
		int position = 0;
		try {
			statement=connection.prepareStatement("select * from statistics where statisticsType=\"movies\"");
			resultSet=statement.executeQuery();
			resultSet.next();
			position=resultSet.getInt("statistics");
			return position;
		} catch (SQLException e) {
			e.printStackTrace();
			return -1;
		} finally {
			DatabaseConnector.release(connection, statement, resultSet);
			connection=null;
			statement=null;
			resultSet=null;
		}
	}
	
	public Set<UserLogin> selectUsers(int type) {//0是管理员搜出所有用户，1是只能搜出非vip或root的user用户
		connection=DatabaseConnector.getConnect();
		Set<UserLogin> userLogins = new TreeSet<UserLogin>();
		try {
			if (type == 1) {
				statement = connection.prepareStatement("select * from loginfo where authority=\"user\"");
			}
			else if (type == 0) {
				statement = connection.prepareStatement("select * from loginfo");
			}
			resultSet=statement.executeQuery();
			while (resultSet.next()) {
				UserLogin login = new UserLogin();
				login.setId(resultSet.getInt("id"));
				login.setUsername(resultSet.getString("username"));
				login.setPassword(resultSet.getString("password"));
				login.setNickname(resultSet.getString("nickname"));
				login.setAuthority(resultSet.getString("authority"));
				userLogins.add(login);
			}
			return userLogins;
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
	
	public void user2Vip(int id) {
		connection=DatabaseConnector.getConnect();
		try {
			statement=connection.prepareStatement("update loginfo set authority='vip' where id=" + id + ";");
			statement.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DatabaseConnector.release(connection, statement, resultSet);
			connection=null;
			statement=null;
			resultSet=null;
		}
	}
	
	public Set<Movie_Review> searchReviews(int movieid, int howMany){//找howMany个评论，-1为全体
		connection=DatabaseConnector.getConnect();
		Set<Movie_Review> movie_Reviews = new TreeSet<Movie_Review>();
		try {
			if (movieid != -1) {
				statement = connection.prepareStatement("select * from movie_reviews where movieid=" + movieid + ";");
			}
			else {
				statement = connection.prepareStatement("select * from movie_reviews;");
			}
			resultSet=statement.executeQuery();
			if (howMany == -1) {
				while (resultSet.next()) {
					Movie_Review movie_Review = new Movie_Review();
					movie_Review.setReviewid(resultSet.getInt("reviewid"));
					movie_Review.setMovieid(resultSet.getInt("movieid"));
					movie_Review.setUserid(resultSet.getInt("userid"));
					movie_Review.setContent(resultSet.getString("content"));
					movie_Review.setScore(resultSet.getInt("score"));
					movie_Reviews.add(movie_Review);
				}
			}
			else {
				int count = 0;
				while (resultSet.next() && count < howMany) {
					Movie_Review movie_Review = new Movie_Review();
					movie_Review.setReviewid(resultSet.getInt("reviewid"));
					movie_Review.setMovieid(resultSet.getInt("movieid"));
					movie_Review.setUserid(resultSet.getInt("userid"));
					movie_Review.setContent(resultSet.getString("content"));
					movie_Review.setScore(resultSet.getInt("score"));
					movie_Reviews.add(movie_Review);
					count++;
				}
			}
			return movie_Reviews;
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
	
	public boolean addReview(int userid, int movieid, String content, int score) {
		connection=DatabaseConnector.getConnect();
		try {
			statement = connection.prepareStatement("insert into movie_reviews values(?, ?, ?, ?, ?);");
			statement.setInt(1, 0); //auto_increment
			statement.setInt(2, userid);
			statement.setInt(3, movieid);
			statement.setString(4, content);
			statement.setInt(5, score); //Not root;
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
	
	public String getMoviename(int movieid) {
		connection=DatabaseConnector.getConnect();
		try {
			statement = connection.prepareStatement("select * from movie_movies where movieid=" + movieid + ";");
			resultSet=statement.executeQuery();
			resultSet.next();
			return resultSet.getString("moviename");
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
	
	public String getUsername(int userid) {
		connection=DatabaseConnector.getConnect();
		try {
			statement = connection.prepareStatement("select * from loginfo where id=" + userid + ";");
			resultSet=statement.executeQuery();
			resultSet.next();
			return resultSet.getString("nickname");
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
