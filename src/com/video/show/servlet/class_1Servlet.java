package com.video.show.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.tb_shiping;
import com.video.show.service.showVideoService;
import com.video.show.service.impl.showVideoServiceImpl;

/**
 * Servlet implementation class class_1Servlet
 */
@WebServlet("/Class_1")
public class class_1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public class_1Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
         int a1=1;
         int a2=2;
         int a3=7;
         showVideoService service=new showVideoServiceImpl();
         List<tb_shiping> list1=service.findVideoByTid(a1);
         List<tb_shiping> list2=service.findVideoByTid(a2);
         List<tb_shiping> list3=service.findVideoByTid(a3);
         
         request.setAttribute("list1", list1);
         request.setAttribute("list2", list2);
         request.setAttribute("list3", list3);
         
         request.getRequestDispatcher("Class_1.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
