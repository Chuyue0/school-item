package com.ty.design.service;

import com.ty.design.base.BaseDao;
import com.ty.design.entity.User;

public interface UserService extends BaseDao<User>{

	/**根据用户名、密码，获取当前用户*/
	User getByUsernameAndPassword(String username, String password);

	/**根据用户名，获取当前用户*/
	User findByUsername(String username);   

}
