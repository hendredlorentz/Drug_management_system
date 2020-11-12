package edu.itstudy.bean;

public class productbean {
	private int uid;
	private String productID;

	private int price;
	private String begin;
	private String dest;
	private String jiphone;
	private String dephone;
	private int isDeal;
	private int time ;
	private String date ; 
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getTime() {
		return time;
	}
	public String getProductID() {
		return productID;
	}

	public void setProductID(String productID) {
		this.productID = productID;
	}
	public void setTime(int time) {
		this.time = time;
	}
	
	
	
	
	public productbean(int uid, String productID, int price, String jiphone, String dephone, String date) {
		super();
		this.uid = uid;
		this.productID = productID;
		this.price = price;
		this.jiphone = jiphone;
		this.dephone = dephone;
		this.date = date;
	}
	public productbean() {
		
	}
	public productbean(int uid, String productID, String begin, String dest) {
		this.uid = uid;
		this.productID = productID;
		this.begin = begin;
		this.dest = dest;
	}
	
	public productbean(int uid, String productID, String begin, String dest, int isDeal, String date) {
		this.uid = uid;
		this.productID = productID;
		this.begin = begin;
		this.dest = dest;
		this.isDeal = isDeal;
		this.date = date;
	}
	public productbean(int uid,  int price, String begin, String dest, String jiphone, String dephone,
			int isDeal, int time,String productID) {
		super();
		this.uid = uid;
		this.productID = productID;
		this.price = price;
		this.begin = begin;
		this.dest = dest;
		this.jiphone = jiphone;
		this.dephone = dephone;
		this.isDeal = isDeal;
		this.time = time;
	}
	public productbean(int uid, String productID, int price, String begin, String dest, String jiphone, String dephone,
			int isDeal, int time, String date) {
		this.uid = uid;
		this.productID = productID;
		this.price = price;
		this.begin = begin;
		this.dest = dest;
		this.jiphone = jiphone;
		this.dephone = dephone;
		this.isDeal = isDeal;
		this.time = time;
		this.date = date;
	}
	public productbean(int uid, int price, String begin, String dest, String jiphone, String dephone, int isDeal,int time) {
		this.uid = uid;
		this.price = price;
		this.begin = begin;
		this.dest = dest;
		this.jiphone = jiphone;
		this.dephone = dephone;
		this.isDeal = isDeal;
		this.time = time;
	}

	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getBegin() {
		return begin;
	}
	public void setBegin(String begin) {
		this.begin = begin;
	}
	public String getDest() {
		return dest;
	}
	public void setDest(String dest) {
		this.dest = dest;
	}
	public String getJiphone() {
		return jiphone;
	}
	public void setJiphone(String jiphone) {
		this.jiphone = jiphone;
	}
	public String getDephone() {
		return dephone;
	}
	public void setDephone(String dephone) {
		this.dephone = dephone;
	}
	public int getIsDeal() {
		return isDeal;
	}
	public void setIsDeal(int isDeal) {
		this.isDeal = isDeal;
	}
	
}
