package edu.itstudy.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.itstudy.bean.productbean;
import edu.itstudy.bean.userbean;
import edu.itstudy.services.IUserServices;
import edu.itstudy.services.imlpm.IUserServicesImp;

public class UpdateServlet extends HttpServlet {

	private IUserServices iuserServices = new IUserServicesImp();

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String uid = request.getParameter("uid");
		String productid = request.getParameter("productid");
		String price = request.getParameter("price");
		String begin = request.getParameter("begin");
		String destination = request.getParameter("destination");
		String jiphone = request.getParameter("jiphone");
		String dephone = request.getParameter("dephone");
		String  isDeal = request.getParameter("isDeal");
		String time = request.getParameter("time");
		String date = request.getParameter("date");
		if(uid==null||"".equals(uid)) {
			uid="0";
		}
		if(price==null||"".equals(price)) {
			price="0";
		}
		if(isDeal==null||"".equals(isDeal)) {
			isDeal="0";
		}
		if(time==null||"".equals(time)) {
			time="0";
		}
		productbean product = new productbean(Integer.parseInt(uid),productid,Integer.parseInt(price),begin,destination,jiphone,dephone,Integer.parseInt(isDeal),Integer.parseInt(time),date);
		boolean result = iuserServices.updateProduct(product);
		
			request.setAttribute("info",result? "修改成功，请点击查询进行刷新":"修改失败");//前台传递参数info，告知用户名或密码错误
			request.getRequestDispatcher("productControl.jsp").forward(request, response);//同时跳转到注册页面
		
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

}
