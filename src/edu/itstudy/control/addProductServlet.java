package edu.itstudy.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.itstudy.bean.medicinebean;
import edu.itstudy.bean.productbean;
import edu.itstudy.bean.userbean;
import edu.itstudy.services.IUserServices;
import edu.itstudy.services.imlpm.IUserServicesImp;

public class addProductServlet extends HttpServlet {

	private IUserServices iuserServices = new IUserServicesImp();

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");//防止乱码
		//从前端拿取参数，并上传至Dao中与数据库进行结合
		String medicineID = request.getParameter("medicineIntroId");
		String medicineName = request.getParameter("medicineName");
		String medicineIntroduce = request.getParameter("medicineIntroduce");
		String isOTC = request.getParameter("isOTC");
		String dosage = request.getParameter("dosage");
		String img = request.getParameter("img");

		//封装为productbean对象
		medicinebean product = new medicinebean(medicineID,medicineName,medicineIntroduce,Integer.parseInt(isOTC),dosage,img);
//		medicinebean product = new productbean(0,productID,Integer.parseInt(price),begin,dest,jiphone,dephone,Integer.parseInt(isDeal),Integer.parseInt(time),Date);
		boolean result = iuserServices.addProduct(product);
		if (result) {//成功了
			response.sendRedirect("/net/medicineControl");//直接进行页面跳转
		} else {//若未成功
			request.setAttribute("info", "信息码已存在导致添加失败");//前台传递参数info，告知用户名或密码错误
			request.getRequestDispatcher("addproduct.jsp").forward(request, response);//同时跳转到注册页面
		}
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

}
