package edu.itstudy.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.itstudy.bean.productbean;
import edu.itstudy.services.IUserServices;
import edu.itstudy.services.imlpm.IUserServicesImp;

public class productOfServlet extends HttpServlet {

	private IUserServices iuserServices = new IUserServicesImp();

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");//防止乱码
		//以下三条语句目的是从前端取到输入的内容
		String id = request.getParameter("productid");
		String begin = request.getParameter("begin");
		String dst = request.getParameter("dest");	
		productbean product_search = new productbean(0,id,begin,dst);//对数据进行封装
		List<productbean> list = iuserServices.searchInfo(product_search);//将封装的对象传入到Dao层得到list
		request.setAttribute("list", list);//准备转给前端，进行打包
		//传入productControl页面，并在其中进行展示
		request.getRequestDispatcher("productControl.jsp").forward(request, response);
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

}
