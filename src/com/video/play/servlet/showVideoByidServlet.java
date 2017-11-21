package com.video.play.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.tb_shiping;
import com.video.play.service.showPlayService;
import com.video.play.service.impl.showPlayServiceImpl;


/**
 * Servlet implementation class showVideoByidServlet
 */
@WebServlet("/showVideoByidServlet")
public class showVideoByidServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public showVideoByidServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String sid=request.getParameter("id");
		int id=Integer.parseInt(sid);
		showPlayService service=new showPlayServiceImpl();
		List<tb_shiping> list=service.findAllVodeoByid(id);
		
		request.getSession().setAttribute("list", list);
		response.sendRedirect("main.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}