package com.user.logandreg.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static String URL = "jdbc:mysql://localhost:3306/zhonghekechengdb?useUnicode=true&characterEncoding=UTF-8";
	private static String USERNAME = "root";
	private static String PASS = "123456";

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String ncname = request.getParameter("ncname");

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(URL, USERNAME, PASS);
			String sql = "insert into tb_user(name,password,ncname) values(?,?,?)";
			PreparedStatement psta = con.prepareStatement(sql);
			psta.setString(1, name);
			psta.setString(2, password);
			psta.setString(3, ncname);
			int num = psta.executeUpdate();
			if (num > 0) {
				// ×¢²á³É¹¦
				response.sendRedirect("Login.jsp");
			} else {
				response.sendRedirect("Register.jsp");
			}

		} catch (Exception e) {

			e.printStackTrace();
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}
