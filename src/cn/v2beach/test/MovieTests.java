package cn.v2beach.test;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class MovieTests {

	public static void main(String[] args) {
//		MovieListDao movieListDao = new MovieListDao();
//		System.out.println(movieListDao.getPagesGenerationStartPosition());
//		Set<UserLogin> userLogins =  movieListDao.selectUsers(1);
//		Iterator<UserLogin> it = userLogins.iterator();
//		UserLogin userLogin = null;
//		while (it.hasNext()) {
//			userLogin = it.next();
//			userLogin.getId();
//			userLogin.getUsername();
//			userLogin.getNickname();
//			userLogin.getAuthority();
//			System.out.println(userLogin.toString());
//		}
		String str = "Movie_005fPage2_jsp.java";
		Pattern p = Pattern.compile("(?i).*?Page(\\d*)");
		Matcher m = p.matcher(str);
		m.find();
		System.out.println(m.group(1));
	}

}
