package edu.itstudy.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.itstudy.bean.productbean;
import edu.itstudy.bean.userbean;
import edu.itstudy.services.IUserServices;
import edu.itstudy.services.imlpm.IUserServicesImp;
import edu.itstudy.bean.medicinebean;
public class indexServlet extends HttpServlet {

    private IUserServices iuserServices = new IUserServicesImp();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");//防止乱码
        List<productbean> list = iuserServices.information();//拿到Dao中的list
        List<userbean> userList = iuserServices.UserInfo(); //拿到用户list
        List<medicinebean> medicineInformation = iuserServices.medicineInfo(); // 拿到药品信息
//        System.out.println("????"+use);

        request.setAttribute("list", list);//将list存入命为“list”中
        request.setAttribute("userList" , userList);
        request.setAttribute("medicineList" , medicineInformation);
        request.getRequestDispatcher("index.jsp").forward(request, response);

    }







    

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

}
