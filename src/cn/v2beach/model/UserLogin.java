package cn.v2beach.model;

public class UserLogin implements Comparable<Object>{
	public UserLogin() {}
	
	private Integer id;
	private String username;
	private String password;
	private String nickname;
	private String authority;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}
	@Override
	public String toString() {
		return "UserLogin [id=" + id + ", username=" + username + ", password=" + password + ", nickname=" + nickname
				+ ", authority=" + authority + "]";
	}
	@Override
	public int compareTo(Object arg) {
		return 1;
	}
}
