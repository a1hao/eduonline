package com.user.logandreg.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.untils.BaseDao;

@WebServlet("/Update")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static String URL = "jdbc:mysql://localhost:3306/zhonghekechengdb?useUnicode=true&characterEncoding=UTF-8";
	private static String USERNAME = "root";
	private static String PASS = "123456";


	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		// 获取用户输入的东西
		String name = request.getParameter("name");
		String ncname = request.getParameter("ncname");
		String password = request.getParameter("newpassword");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(URL, USERNAME, PASS);
			String sql = "update tb_user set password=?,ncname=? where name=?";
			PreparedStatement psta = con.prepareStatement(sql);
			psta.setString(1, password);
			psta.setString(2, ncname);
			psta.setString(3, name);
			psta.executeUpdate();
			psta.close();
			con.close();			
		} catch (Exception e) {
			e.printStackTrace();
		}
		response.sendRedirect("xiugai.jsp");
	}
}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		

//		// 构造操作数据库的语句
//		try {
//			BaseDao bd = new BaseDao();
//			ResultSet rs = bd.query("select password from tb_user where name =?", name);
//
//			if (rs.next()) {
//				if (rs.getString("password").equals(password)) {
//					String newpassword = request.getParameter("newpassword");
//					bd.update("update tb_user set password=? where name =?", newpassword, name);
//					request.getRequestDispatcher("/Homepage.jsp").forward(request, response);
//				} else {
//					request.getRequestDispatcher("/change.jsp").forward(request, response);
//				}
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}

	
