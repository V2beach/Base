package cn.v2beach.model;

public class Music implements Comparable<Object> {
	private String nickname;
	private String songname;
	private String songdate;
	private Integer userid;
	public Music() {
		
	}
	public Music(String nickname,String songname,String songdate,Integer userid) {
		this.nickname=nickname;
		this.songname=songname;
		this.songdate=songdate;
		this.userid=userid;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getSongname() {
		return songname;
	}
	public void setSongname(String songname) {
		this.songname = songname;
	}
	public String getSongdate() {
		return songdate;
	}
	public void setSongdate(String songdate) {
		this.songdate = songdate;
	}
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	@Override
	public String toString() {
		return "Music [nickname=" + nickname + ", songname=" + songname + ", songdate=" + songdate + ", userid="
				+ userid + "]";
	}
	@Override
	public int compareTo(Object arg) {
		return 1;
	}
}
