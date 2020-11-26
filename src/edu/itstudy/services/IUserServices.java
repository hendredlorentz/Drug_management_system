package edu.itstudy.services;
import java.util.List;
import edu.itstudy.bean.*;
import edu.itstudy.bean.productbean;
import edu.itstudy.bean.userbean;
public interface IUserServices {
	/**
	 * зЂВс
	 * @param user
	 * @return true:success
	 */
	public boolean register(userbean user);
	public userbean login(userbean user);
	public String forgetPassword(userbean user);
	public List<productbean> information();
	public List<userbean> UserInfo();
	public List<medicinebean> medicineInfo();
	public List<warehousebean> warehouseInfo();
	public List<productbean> searchInfo(productbean product);
//	searchUserInfo
	public List<userbean> searchUserInfo(userbean user);
	public List<medicinebean> searchMedicineInfo(medicinebean medicine);
	public List<warehousebean> searchwarehouseInfo(warehousebean warehouse);
	public userbean getProductById(String id);
	public  medicinebean getMedicineById(String id);
	public boolean updateProduct(userbean product);
	public boolean delete(String uid,int isD);
	public boolean medicinedelete(String medicineID,int isD);
	public boolean addProduct(medicinebean product);
}
