package com.video.search.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.video.search.service.searchService;
import com.video.search.service.impl.searchServiceImpl;
import com.entity.*;

/**
 * Servlet implementation class search_classServlet
 */
@WebServlet("/search_class")
public class search_classServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public search_classServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String keyword= request.getParameter("keyword");
		searchService service=new searchServiceImpl();
		List<tb_shiping> list=service.searchVideo(keyword);
		System.out.println(list.get(0).getTexttitle());
		if(list==null||list.size()==0){
			list=null;
		}else if(list!=null){
		 request.setAttribute("list", list);
		}
	      request.getRequestDispatcher("search_class.jsp").forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
