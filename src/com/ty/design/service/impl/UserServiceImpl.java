package com.ty.design.service.impl;

import org.springframework.stereotype.Service;

import com.ty.design.base.BaseDaoImpl;
import com.ty.design.entity.User;
import com.ty.design.service.UserService;

@Service
public class UserServiceImpl extends BaseDaoImpl<User> implements UserService {

	@Override
	public User getByUsernameAndPassword(String username, String password) {
		return (User) getSession().createQuery("from User u where u.username=? and u.password=?")//
				.setParameter(0, username)//
				.setParameter(1, password)//
				.uniqueResult();
	}

	@Override
	public User findByUsername(String username) {
		return (User) getSession().createQuery("from User u where u.username=?")//
				.setParameter(0, username)//
				.uniqueResult();
	}

}
