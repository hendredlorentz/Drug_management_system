package edu.itstudy.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.itstudy.bean.userbean;
import edu.itstudy.services.IUserServices;
import edu.itstudy.services.imlpm.IUserServicesImp;

public class LoginServlet extends HttpServlet {

	private IUserServices iuserServices = new IUserServicesImp();
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		System.out.println("登录页面测试");
//		System.out.println("这就是好兄弟？" + brotherName);
		userbean user = new userbean(0, name, password,null,null,null,-1);
//		System.out.println(user.getPassword());
		userbean userof = iuserServices.login(user);

		String flag = request.getParameter("name");
		if (flag!=null) {
			request.getSession().setAttribute("brotherName", userof.getBrotherName());
			request.getSession().setAttribute("email", userof.getEmail());
			request.getSession().setAttribute("isAdmin", userof.getIsAdmin());

//			System.out.println(brotherName+"不会吧");
//			System.out.println("从userbean拿到的:   "+userof.getBrotherName() + userof.getEmail());
			request.getSession().setAttribute("name", name);
			request.getSession().setAttribute("password",password);

			response.sendRedirect("index");


			return;
		} else {
			request.setAttribute("errorinfo", "用户名或密码输入错误");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}

	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

}
