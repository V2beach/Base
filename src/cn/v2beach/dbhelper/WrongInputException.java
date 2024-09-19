package cn.v2beach.dbhelper;

@SuppressWarnings("serial")
public class WrongInputException extends Exception{
	public WrongInputException(String msg) {
		super(msg);
	}
}
