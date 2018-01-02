package com.user.logandreg.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
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

		String username = request.getParameter("name");
		String password = request.getParameter("password");

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(URL, USERNAME, PASS);
			String sql = "select id,name,password,ncname from tb_user where name=? and password = ?";
			PreparedStatement psta = con.prepareStatement(sql);
			psta.setString(1, username);
			psta.setString(2, password);
			ResultSet rs = psta.executeQuery();
			if (rs.next()) {
				String name = rs.getString(2);
				String password1 = rs.getString(3);
				String ncname = rs.getString(4);
				request.getSession().setAttribute("name", name);
				request.getSession().setAttribute("password", password1);
				request.getSession().setAttribute("ncname", ncname);
				System.out.println(name);
				response.sendRedirect("show");
			} else {
				response.sendRedirect("Login.jsp");
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
