package edu.itstudy.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.itstudy.bean.userbean;
import edu.itstudy.services.IUserServices;
import edu.itstudy.services.imlpm.IUserServicesImp;

public class forgetPassword extends HttpServlet {

	private IUserServices iuserServices = new IUserServicesImp();

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");//防止乱码
		System.out.println("忘记密码测试");
		String name = request.getParameter("name");//得到name
		String brotherName = request.getParameter("brotherName");//获取好兄弟姓名

		userbean user = new userbean(0,name,null,null,null,brotherName);//封装
		String password = iuserServices.forgetPassword(user);//调用查询方法
		if(password != null && password != "") {
			request.getSession().setAttribute("password",password);//存储session
			response.sendRedirect("password.jsp");//跳转页面
		}else {
			request.setAttribute("info", "查询不到结果,请重新注册");
			request.getRequestDispatcher("register.jsp").forward(request, response);
		}
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

}
