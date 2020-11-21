package edu.itstudy.dao;

import edu.itstudy.bean.productbean;
import edu.itstudy.bean.userbean;
import edu.itstudy.bean.medicinebean;

import java.util.*;
public interface IUserDao {
	
	public int register(userbean user1);//·â×°userbean¶ÔÏó
	public userbean login(userbean user1);
	public String forgetPassword(userbean user1);
	public List<productbean> getAllinfos();
	public List<userbean> getAllUserinfos();
//	public List<userbean> getSpecialUserInfo();
	public List<medicinebean> getMedicineInfo();
	public List<productbean> getSearchInfo(productbean product);
	public List<userbean> getUserSearchInfo(userbean user);
	public List<medicinebean> getMedicineSearchInfo(medicinebean medicine);
	public productbean getProductById(int id);

	public medicinebean getMedicineById(int id);
	public int updateproduct(productbean product);
	public int delete(int uid,int isD);
	public int addProduct(productbean product);

}
