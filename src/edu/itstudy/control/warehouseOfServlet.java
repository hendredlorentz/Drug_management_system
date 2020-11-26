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
import edu.itstudy.bean.warehousebean;
import edu.itstudy.services.IUserServices;
import edu.itstudy.services.imlpm.IUserServicesImp;

public class warehouseOfServlet extends HttpServlet {

	private IUserServices iuserServices = new IUserServicesImp();

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("仓库页面测试");
		request.setCharacterEncoding("UTF-8");//防止乱码
		//以下三条语句目的是从前端取到输入的内容
		String medicine_id = request.getParameter("medicine_id");
		String medicine_name = request.getParameter("medicine_name");
		System.out.println("这是输入的id"+" !!!!!! "+medicine_id+" "+" !!!!!! "+medicine_name);
		warehousebean warehouse_search = new warehousebean(medicine_id,medicine_name);

		List<warehousebean> list = iuserServices.searchwarehouseInfo(warehouse_search);//将封装的对象传入到Dao层得到list
		System.out.println("这里是warehouse里面的list" + list);
//		System.out.println("用户表是否空："+list.isEmpty());
		request.setAttribute("warehouseList", list);//准备转给前端，进行打包
		//传入productControl页面，并在其中进行展示
//		request.getRequestDispatcher("medicineControl.jsp").forward(request, response);
		request.getRequestDispatcher("warehouseOK.jsp").forward(request, response);

	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

}
