package com.user.logandreg.service.impl;

import com.entity.tb_user;
import com.user.logandreg.dao.UserService;
import com.user.logandreg.dao.Userdao;
import com.user.logandreg.dao.impl.UserDaoImpl;

public class UserServiceImpl implements UserService {

	private Userdao dao;

	public UserServiceImpl() {
		dao = new UserDaoImpl();
	}

	@Override
	public tb_user login(tb_user user) {
		try {
			// »’÷æ ‰≥ˆ
			user = dao.login(user);
			return user;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
