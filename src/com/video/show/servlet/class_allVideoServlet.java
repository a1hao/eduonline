package com.video.show.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.tb_shiping;
import com.entity.tb_type;
import com.video.show.service.showVideoService;
import com.video.show.service.impl.showVideoServiceImpl;

/**
 * Servlet implementation class class_allVideoServlet
 */
@WebServlet("/class_all")
public class class_allVideoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public class_allVideoServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int i=Integer.parseInt(request.getParameter("tid"));
		String tname=null;
		showVideoService service=new showVideoServiceImpl();
		if(i>0&&i<=7){
			List<tb_shiping> list=service.findVideoByTid(i);
			List<tb_type> typename=service.findTypeBytid(i);
			tname=typename.get(0).getTname();

			request.setAttribute("tname", tname);
		    request.setAttribute("list", list);
			 
	        request.getRequestDispatcher("Class_all.jsp").forward(request, response);
		       
		}else if(i==8){
			List<tb_shiping> list=service.findFreeVideo();
			tname="免费好课";
			request.setAttribute("tname", tname);
			 request.setAttribute("list", list);
			 
		      request.getRequestDispatcher("Class_all.jsp").forward(request, response);
		}else if(i==9){
			List<tb_shiping> list=service.findRecommendVideo();
			tname="推荐好课";
			request.setAttribute("tname", tname);
		    request.setAttribute("list", list);
		    request.getRequestDispatcher("Class_all.jsp").forward(request, response);
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
