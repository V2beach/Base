package cn.v2beach.model;

public class Movie implements Comparable<Object> {
	private Integer movieid;
	private String moviename;
	private String imdbrate;
	private String category;
	private String country;
	private String director;
	private String douban;
	private String download;
	private String intro;
	private String language;
	private String actor;
	private String duration;
	private String publishdate;
	public Movie(Integer movieid, String moviename, String imdbrate, String category, String country, String director,
			String douban, String download, String intro, String language, String actor, String duration,
			String publishdate) {
		super();
		this.movieid = movieid;
		this.moviename = moviename;
		this.imdbrate = imdbrate;
		this.category = category;
		this.country = country;
		this.director = director;
		this.douban = douban;
		this.download = download;
		this.intro = intro;
		this.language = language;
		this.actor = actor;
		this.duration = duration;
		this.publishdate = publishdate;
	}
	public Integer getMovieid() {
		return movieid;
	}
	public void setMovieid(Integer movieid) {
		this.movieid = movieid;
	}
	public String getMoviename() {
		return moviename;
	}
	public void setMoviename(String moviename) {
		this.moviename = moviename;
	}
	public String getImdbrate() {
		return imdbrate;
	}
	public void setImdbrate(String imdbrate) {
		this.imdbrate = imdbrate;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public String getDouban() {
		return douban;
	}
	public void setDouban(String douban) {
		this.douban = douban;
	}
	public String getDownload() {
		return download;
	}
	public void setDownload(String download) {
		this.download = download;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public String getActor() {
		return actor;
	}
	public void setActor(String actor) {
		this.actor = actor;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	public String getPublishdate() {
		return publishdate;
	}
	public void setPublishdate(String publishdate) {
		this.publishdate = publishdate;
	}
	@Override
	public String toString() {
		return "Movie [movieid=" + movieid + ", moviename=" + moviename + ", imdbrate=" + imdbrate + ", category="
				+ category + ", country=" + country + ", director=" + director + ", douban=" + douban + ", download="
				+ download + ", intro=" + intro + ", language=" + language + ", actor=" + actor + ", duration="
				+ duration + ", publishdate=" + publishdate + "]";
	}
	@Override
	public int compareTo(Object arg) {
		return 1;
	}
}