package edu.itstudy.bean;

public class userbean {
//	String name = request.getParameter("name");
//	String password = request.getParameter("password");
//	String Apassword = request.getParameter("Apassword");
//	String email = request.getParameter("email");
	private int uid ;
	private String name ;
	private String password;
	private String Apassword;
	private String email;
	private String brotherName;
	private int isAdmin;
	public userbean() {
		
	}
	
	public userbean(int uid, String name, String password) {
		this.uid = uid;
		this.name = name;
		this.password = password;
	}
	public userbean(int uid, String name, String password, String apassword, String email,String brotherName,int isAdmin) {
		this.uid = uid;
		this.name = name;
		this.password = password;
		Apassword = apassword;
		this.email = email;
		this.brotherName = brotherName;
		this.isAdmin = isAdmin;
	}
	public userbean(int uid, String name, String password, String apassword, String email,String brotherName) {
		this.uid = uid;
		this.name = name;
		this.password = password;
		Apassword = apassword;
		this.email = email;
		this.brotherName = brotherName;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getApassword() {
		return Apassword;
	}
	public void setApassword(String apassword) {
		Apassword = apassword;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	public String getBrotherName() {
		return brotherName;
	}

	public void setBrotherName(String brotherName) {
		this.brotherName = brotherName;
	}

	public int getIsAdmin() {
		return isAdmin;
	}

	public void setIsAdmin(int isAdmin) {
		this.isAdmin = isAdmin;
	}
}
