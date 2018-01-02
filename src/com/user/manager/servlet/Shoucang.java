package com.user.manager.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.tb_shiping;
import com.entity.tb_shoucang;
import com.user.manager.service.ShoucangVideoService;
import com.user.manager.service.impl.ShoucangVideoServiceimpl;
import com.video.play.service.showPlayService;
import com.video.play.service.impl.showPlayServiceImpl;

/**
 * Servlet implementation class Shoucang
 */
@WebServlet("/Shoucang")
public class Shoucang extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Shoucang() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 获取登陆用户信息
		Object tempObj =  request.getSession().getAttribute("name");
		if(tempObj == null){
			response.sendRedirect("Login.jsp");
			return;
		}
		
		String userinfo = (String)tempObj;
		ShoucangVideoService service=new ShoucangVideoServiceimpl();
		  showPlayService service1=new showPlayServiceImpl();
		  
		  
		  
		 List<tb_shoucang> list=service.findShipingNameBy(userinfo);
		 
		 
		 List<tb_shiping> shoucanglist =new ArrayList<tb_shiping>();
		 
		 if(list.size()==0){
			 System.out.println("没有收藏到任何视频");
		 }else if(list.size()>0){
			 for(int i = 0;i < list.size(); i ++){
				 System.out.println(list.get(i).getShibian()+"-----------------------------------");
				 shoucanglist.add(service1.findVodeoByid(list.get(i).getShibian()).get(0));
		        }
		 }
		 
		 request.setAttribute("shoucanglist", shoucanglist);
		 request.getRequestDispatcher("Shoucang.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
