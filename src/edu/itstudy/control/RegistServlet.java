package edu.itstudy.control;

import java.io.IOException;
import java.io.StringReader;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.itstudy.bean.userbean;
import edu.itstudy.services.IUserServices;
import edu.itstudy.services.imlpm.IUserServicesImp;

public class RegistServlet extends HttpServlet {

	private IUserServices iuserServices = new IUserServicesImp();

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String Apassword = request.getParameter("Apassword");
		String email = request.getParameter("email");
		String brotherName = request.getParameter("brotherName");
		userbean user = new userbean(0, name, password, Apassword, email,brotherName);
		boolean result = iuserServices.register(user);
		if (result) {//成功了
			response.sendRedirect("login.jsp");//直接进行页面跳转
		} else {//若未成功
			request.setAttribute("info", "用户名已存在导致注册失败");//前台传递参数info，告知用户名或密码错误
			request.getRequestDispatcher("register.jsp").forward(request, response);//同时跳转到注册页面
		}
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

}
