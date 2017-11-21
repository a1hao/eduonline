package com.video.show.servlet;

import java.io.IOException;
import java.util.List;
import com.entity.tb_shiping;
import com.video.show.service.showVideoService;
import com.video.show.service.impl.showVideoServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class showVideo
 */
@WebServlet("/show")
public class showVideoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public showVideoServlet() {
        super(); 
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           showVideoService service=new showVideoServiceImpl();
           List<tb_shiping> videolist=service.findAddVideo();
           request.setAttribute("videolist", videolist);
           System.out.println("执行到这里");
           request.getRequestDispatcher("index.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
