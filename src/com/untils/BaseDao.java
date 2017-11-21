package com.untils;

import java.lang.reflect.Field;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BaseDao {

	private static String URL = "jdbc:mysql://localhost:3306/zhonghekechengdb?useUnicode=true&characterEncoding=UTF-8";
	private static String USERNAME = "root";
	private static String PASS = "123456";

	public static Connection getCon() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(URL, USERNAME, PASS);
			return con;
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public static void closeAll(ResultSet rs, PreparedStatement psta, Connection con) {
		try {
			if (rs != null) {
				rs.close();
				rs = null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (psta != null) {
					psta.close();
					psta = null;
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				try {
					if (con != null) {
						con.close();
						con = null;
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
			}

		}

	}

	/**
	 * 这个查询方法 ，返回值是List<?>集合数据 String sql，用来放select的sql语句 Class
	 * <T> cla，要查询那个表，就对应用那个表的实体类 Object... params，可变参数，可以有也可以没有
	 **/
	public static <T> List<T> query(String sql, Class<T> cla, Object... params) throws Exception {
		System.out.println("query...");
		Connection con = getCon();

		PreparedStatement psta = con.prepareStatement(sql);
		for (int i = 0; i < params.length; i++) {
			psta.setObject(i + 1, params[i]);
		}
		ResultSet rs = psta.executeQuery();

		List<T> list = new ArrayList<T>();
		ResultSetMetaData md = rs.getMetaData();
		while (rs.next()) {
			T t = cla.newInstance();
			for (int i = 0; i < md.getColumnCount(); i++) {
				String colName = md.getColumnName(i + 1);
				Object colVal = rs.getObject(colName);
				setProperty(t, colName, colVal);
			}
			list.add(t);
		}
		closeAll(rs, psta, con);
		return list;
	}

	/**
	 * 这个删除和跟新，插入的方法 ，返回值是int数据，表示删除的条数或更新的条数 String
	 * sql，用来放update，insert，delete的sql语句 Class<T> cla，要查询那个表，就对应用那个表的实体类
	 **/
	public static int update(String sql, Object... params) throws Exception {
		System.out.println("update...");
		Connection con = getCon();
		PreparedStatement psta = con.prepareStatement(sql);
		int update = 0;
		for (int i = 0; i < params.length; i++) {
			System.out.println(i + "::" + params[i]);
			psta.setObject(i + 1, params[i]);
		}
		update = psta.executeUpdate();
		return update;
	}

	public static void setProperty(Object obj, String name, Object value)
			throws NoSuchFieldException, SecurityException, IllegalArgumentException, IllegalAccessException {
		Class<?> cla = obj.getClass();
		Field f = cla.getDeclaredField(name);
		f.setAccessible(true);
		f.set(obj, value);
	}
}
