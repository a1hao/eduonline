package com.user.logandreg.dao.impl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import com.entity.tb_user;
import com.user.logandreg.dao.Userdao;
import com.untils.*;

public class UserDaoImpl extends BaseDao implements Userdao {

	@Override
	public tb_user login(tb_user user) throws Exception {
		String sql = "select id,name,password,ncname from tb_user where name=? and password = ?";
		List<tb_user> list = query(sql, tb_user.class, user.getName(), user.getPassword());
		return list.get(0);
	}

	@Override
	public List<tb_user> findUserByName(String name) throws Exception {
		String sql = "select name from tb_user";
		return query(sql, tb_user.class);
	}

	@Override
	public int addUser(tb_user user) throws Exception {
		String sql = "insert into tb_user(name,password,ncname) values(?,?,?)";
		int num = update(sql, user.getName(), user.getPassword(), user.getNcname());
		return num;
	}

}
