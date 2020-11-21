package edu.itstudy.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.itstudy.bean.productbean;
import edu.itstudy.bean.userbean;
import edu.itstudy.bean.medicinebean;
import edu.itstudy.services.IUserServices;
import edu.itstudy.services.imlpm.IUserServicesImp;

public class medicineOfServlet extends HttpServlet {

	private IUserServices iuserServices = new IUserServicesImp();

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("药品信息页面测试");
		request.setCharacterEncoding("UTF-8");//防止乱码
		//以下三条语句目的是从前端取到输入的内容
		String medicineName = request.getParameter("medicineName");
		String dosage = request.getParameter("dosage");

//		userbean user_search =new userbean(name,null,null,null,null,0,0,id);
		medicinebean medicine_search = new medicinebean(medicineName,dosage);

		List<medicinebean> list = iuserServices.searchMedicineInfo(medicine_search);//将封装的对象传入到Dao层得到list
//		System.out.println("用户表是否空："+list.isEmpty());
		request.setAttribute("medicineList", list);//准备转给前端，进行打包
		//传入productControl页面，并在其中进行展示
		request.getRequestDispatcher("medicineControl.jsp").forward(request, response);
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

}
