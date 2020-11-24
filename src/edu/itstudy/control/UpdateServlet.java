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
		String name = request.getParameter("name");
		String workerID = request.getParameter("workerID");
		String isAdmin = request.getParameter("isAdmin");
		System.out.println("workerID是多少！："+workerID + isAdmin);
		if(workerID==null||"".equals(workerID)) {
			workerID="000000";
		}
		if(isAdmin==null||"".equals(isAdmin)) {
			isAdmin="0";
		}
		userbean product = new userbean(name,workerID,Integer.parseInt(isAdmin));
		System.out.println("这里测试修改成功了没??？"+" "+product.getWorkerID()+" "+product.getIsAdmin()+product.getName());

//		userbean product = new productbean(Integer.parseInt(uid),productid,Integer.parseInt(price),begin,destination,jiphone,dephone,Integer.parseInt(isDeal),Integer.parseInt(time),date);
		boolean result = iuserServices.updateProduct(product);
		System.out.println("这里测试修改成功了没？"+" "+result);
		request.setAttribute("info",result? "修改成功，请点击查询进行刷新":"修改失败");//前台传递参数info，告知用户名或密码错误
		request.getRequestDispatcher("productControl.jsp").forward(request, response);
		
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

}
