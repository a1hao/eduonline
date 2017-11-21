package com.user.logandreg.dao;

import java.util.List;

import com.entity.tb_user;


public interface Userdao {
	tb_user login(tb_user user) throws Exception;
	int addUser(tb_user user)throws Exception;
	List<tb_user> findUserByName(String name)throws Exception;
}
