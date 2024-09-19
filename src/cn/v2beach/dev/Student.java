package cn.v2beach.dev;

public class Student implements Comparable<Object>{//Object?
	private String stuname;
	private String stucode;
	private String stumajor;
	private String stugpa;
	private String stupwd;
	public Student() {
		
	}
	public Student(String stuname,String stucode,String stumajor,String stugpa,String stupwd) {
		this.stuname=stuname;
		this.stucode=stucode;
		this.stumajor=stumajor;
		this.stugpa=stugpa;
		this.stupwd=stupwd;
	}
	public String getStuname() {
		return stuname;
	}
	public void setStuname(String stuname) {
		this.stuname = stuname;
	}
	public String getStucode() {
		return stucode;
	}
	public void setStucode(String stucode) {
		this.stucode = stucode;
	}
	public String getStumajor() {
		return stumajor;
	}
	public void setStumajor(String stumajor) {
		this.stumajor = stumajor;
	}
	public String getStugpa() {
		return stugpa;
	}
	public void setStugpa(String stugpa) {
		this.stugpa = stugpa;
	}
	public String getStupwd() {
		return stupwd;
	}
	public void setStupwd(String stupwd) {
		this.stupwd = stupwd;
	}
	@Override
	public String toString() {
		return "Student [stuname=" + stuname + ", stucode=" + stucode + ", stumajor=" + stumajor + ", stugpa=" + stugpa
				+ ", stupwd=" + stupwd + "]";
	}
	@Override
	public int compareTo(Object o) {
		if (!(o instanceof Student))
			throw new RuntimeException("不是信息对象！");
		Student stu=(Student)o;
		Long code1=Long.parseLong(stucode);
		Long code2=Long.parseLong(stu.getStucode());
		if (code1>code2)
			return 1;
		else if (code1<code2)
			return -1;
		return 0;
	}
}
