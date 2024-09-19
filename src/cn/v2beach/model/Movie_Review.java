package cn.v2beach.model;

public class Movie_Review implements Comparable<Object>{
	private int reviewid;
	private int userid;
	private int movieid;
	private String content;
	private int score;
	public int getReviewid() {
		return reviewid;
	}
	public void setReviewid(int reviewid) {
		this.reviewid = reviewid;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public int getMovieid() {
		return movieid;
	}
	public void setMovieid(int movieid) {
		this.movieid = movieid;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	@Override
	public String toString() {
		return "Movie_Review [reviewid=" + reviewid + ", userid=" + userid + ", movieid=" + movieid + ", content="
				+ content + ", score=" + score + "]";
	}
	public Movie_Review(int reviewid, int userid, int movieid, String content, int score) {
		super();
		this.reviewid = reviewid;
		this.userid = userid;
		this.movieid = movieid;
		this.content = content;
		this.score = score;
	}
	public Movie_Review() {
		// TODO Auto-generated constructor stub
	}
	@Override
	public int compareTo(Object object) {
		return 1;
	}
}
