package cn.v2beach.dbhelper;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class UserCodeChecker {
	public UserCodeChecker(){
		
	}
	
	private String username;
	private String passcode;
	
	static boolean hasDigit(String str) {
		boolean flag=false;
		Pattern p = Pattern.compile(".*\\d+.*");
		Matcher m = p.matcher(str);
		if (m.matches()) {
			flag=true;
		}
		return flag;
	}
	
	static boolean hasNonDigit(String str) {
		boolean flag=false;
		Pattern p = Pattern.compile(".*\\D+.*");
		Matcher m = p.matcher(str);
		if (m.matches()) {
			flag=true;
		}
		return flag;
	}
	
	static boolean hasUpper(String str) {
		boolean flag=false;
		Pattern p = Pattern.compile(".*[A-Z].*");
		Matcher m = p.matcher(str);
		if (m.matches()) {
			flag=true;
		}
		return flag;
	}
	
	static boolean hasLower(String str) {
		boolean flag=false;
		Pattern p = Pattern.compile(".*[a-z].*");
		Matcher m = p.matcher(str);
		if (m.matches()) {
			flag=true;
		}
		return flag;
	}
	
	static boolean hasSpeci(String str) {
		boolean flag=false;
		Pattern p = Pattern.compile(".*[^a-zA-Z0-9].*");
		Matcher m = p.matcher(str);
		if (m.matches()) {
			flag=true;
		}
		return flag;
	}
	
	static boolean rangeJudgement(String str,int floor,int ceil) {
		boolean flag=false;
		if (str.length()<floor||str.length()>ceil)
			flag=true;
		else 
			flag=false;
		return flag;
	}
	
	static void passwordJudgement(String str) throws WrongInputException{
		if (hasDigit(str)&&hasUpper(str)&&hasLower(str)&&!hasSpeci(str)) {}
		else {
			if (hasSpeci(str)) throw new WrongInputException("您输入的密码格式错误，请检查后重新输入。") ;
			if (!hasDigit(str)) throw new WrongInputException("您输入的密码格式错误，请检查后重新输入。") ;
			if (!hasUpper(str)) throw new WrongInputException("您输入的密码格式错误，请检查后重新输入。") ;
			if (!hasLower(str)) throw new WrongInputException("您输入的密码格式错误，请检查后重新输入。") ;
		}
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPasscode() {
		return passcode;
	}
	public void setPasscode(String passcode) throws WrongInputException{
		if (rangeJudgement(passcode,1,30)) throw new WrongInputException("您输入的密码格式错误，请检查后重新输入。");//不做限制了
		//passwordJudgement(passcode);
		this.passcode = passcode;
	}
}

