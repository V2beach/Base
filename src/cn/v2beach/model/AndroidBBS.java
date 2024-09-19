package cn.v2beach.model;

public class AndroidBBS implements Comparable<Object>{
	private int bbid;
	private String nickname;
	private int bbtype;
	private String bbtitle;
	private String bbtime;
	private String longitude;
	private String latitude;
	private String description;
	private String other;
	
	public AndroidBBS() {
		// TODO Auto-generated constructor stub
	}
	
	public AndroidBBS(int bbid, String nickname, int bbtype, String bbtitle, String bbtime, String longitude, String latitude, String description, String other) {
		this.bbid = bbid;
		this.nickname = nickname;
		this.bbtype = bbtype;
		this.bbtitle = bbtitle;
		this.bbtime = bbtime;
		this.longitude = longitude;
		this.latitude = latitude;
		this.description = description;
		this.other = other;
	}
	
	public int getBbid() {
		return bbid;
	}
	public void setBbid(int bbid) {
		this.bbid = bbid;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public int getBbtype() {
		return bbtype;
	}
	public void setBbtype(int bbtype) {
		this.bbtype = bbtype;
	}
	public String getBbtitle() {
		return bbtitle;
	}
	public void setBbtitle(String bbtitle) {
		this.bbtitle = bbtitle;
	}
	public String getLongitude() {
		return longitude;
	}
	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}
	public String getLatitude() {
		return latitude;
	}
	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getOther() {
		return other;
	}
	public void setOther(String other) {
		this.other = other;
	}
	public String getBbtime() {
		return bbtime;
	}
	public void setBbtime(String bbtime) {
		this.bbtime = bbtime;
	}
	@Override
	public String toString() {
		return "AndroidBBS [bbid=" + bbid + ", nickname=" + nickname + ", bbtype=" + bbtype + ", bbtitle=" + bbtitle
				+ ", bbtime=" + bbtime + ", longitude=" + longitude + ", latitude=" + latitude + ", description="
				+ description + ", other=" + other + "]";
	}

	@Override
	public int compareTo(Object arg0) {
		// TODO Auto-generated method stub
		return 1;
	}
	
}
