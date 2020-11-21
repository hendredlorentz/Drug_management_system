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
	public List<productbean> searchInfo(productbean product);
//	searchUserInfo
	public List<userbean> searchUserInfo(userbean user);
	public List<medicinebean> searchMedicineInfo(medicinebean medicine);
	public productbean getProductById(int id);
	public  medicinebean getMedicineById(int id);
	public boolean updateProduct(productbean product);
	public boolean delete(int uid,int isD);
	public boolean addProduct(productbean product);
}
