package com.video.show.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.video.show.service.showVideoService;
import com.video.show.service.impl.showVideoServiceImpl;

/**
 * Servlet implementation class videoCommentServlet
 */
@WebServlet("/tijiao")
public class videoCommentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public videoCommentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		//获取用户名
		Object tempObj =  request.getSession().getAttribute("name");
		String name=(String)tempObj;
	
		showVideoService service=new showVideoServiceImpl();
		
		//通过用户名找到用户id
		int id=service.findIdByName(name);
		String str1= request.getParameter("pid");
		
		//接收shibian
		int shibian=Integer.parseInt(str1);
		
		if(tempObj==null||tempObj==""){
			try {
				response.sendRedirect("Login.jsp");
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				response.sendRedirect("playvideo?shibian="+shibian);
			}
			
		}else{
		
		//接收评论的内容
		String text= request.getParameter("text");
		
        //执行insert的语句
		int result=service.insertComment(id,shibian,text);
		
		//对执行结果进行判断，不为0着insert成功
		if(result!=0){
			response.sendRedirect("playvideo?shibian="+shibian);
		}else{
			
			System.out.println("评论成败");
			
		}
		
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
