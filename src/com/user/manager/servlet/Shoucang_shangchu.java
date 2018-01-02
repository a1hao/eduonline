package com.user.manager.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.manager.service.ShoucangVideoService;
import com.user.manager.service.impl.ShoucangVideoServiceimpl;

/**
 * Servlet implementation class Shoucang_shangchu
 */
@WebServlet("/Shoucang_shangchu")
public class Shoucang_shangchu extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Shoucang_shangchu() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String shibian = request.getParameter("shibian");
		ShoucangVideoService service=new ShoucangVideoServiceimpl();
		
		// 获取登陆用户信息
		Object tempObj =  request.getSession().getAttribute("name");
		if(tempObj == null){
			response.sendRedirect("Login.jsp");
			return;
		}
		String userinfo = (String)tempObj;
		
		int result=service.deleteShoucang(shibian,userinfo);
		
		if(result>0){
			 request.getRequestDispatcher("Shoucang").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
