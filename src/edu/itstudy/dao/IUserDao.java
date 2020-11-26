package edu.itstudy.dao;

import edu.itstudy.bean.productbean;
import edu.itstudy.bean.userbean;
import edu.itstudy.bean.medicinebean;
import edu.itstudy.bean.warehousebean;
import java.util.*;
public interface IUserDao {
	
	public int register(userbean user1);//·â×°userbean¶ÔÏó
	public userbean login(userbean user1);
	public String forgetPassword(userbean user1);
	public List<productbean> getAllinfos();
	public List<userbean> getAllUserinfos();
//	public List<userbean> getSpecialUserInfo();
	public List<medicinebean> getMedicineInfo();
	public List<warehousebean> getWarehouseInfo();

	public List<warehousebean> getWarehouseSearchInfo(warehousebean warehouse);
	public List<productbean> getSearchInfo(productbean product);
	public List<userbean> getUserSearchInfo(userbean user);
	public List<medicinebean> getMedicineSearchInfo(medicinebean medicine);
	public userbean getProductById(String id);

	public medicinebean getMedicineById(String id);
	public int updateproduct(userbean product);
	public int delete(String uid,int isD);
	public int medicinedelete(String medicineID,int isD);
	public int addProduct(medicinebean product);

}
