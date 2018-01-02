package com.user.manager.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.manager.service.ShoucangVideoService;
import com.user.manager.service.impl.ShoucangVideoServiceimpl;
import com.video.play.service.showPlayService;
import com.video.play.service.impl.showPlayServiceImpl;
import com.video.show.service.showVideoService;
import com.video.show.service.impl.showVideoServiceImpl;

/**
 * Servlet implementation class shoucang_check
 */
@WebServlet("/shoucang_check")
public class shoucang_check extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public shoucang_check() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String shibian = request.getParameter("shibian");
		// 获取登陆用户信息
				Object tempObj =  request.getSession().getAttribute("name");
				if(tempObj == null){
					response.sendRedirect("Login.jsp");
					return;
				}
				String userinfo = (String)tempObj;
			  ShoucangVideoService service=new ShoucangVideoServiceimpl();
			
			  int result=service.shoucangVideo(shibian,userinfo);
			  if(result!=0){
				  System.out.println("收藏成功");
				  request.setAttribute("result", result);
				  request.getRequestDispatcher("playvideo?shibian="+shibian).forward(request, response);
			  }
			  
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
