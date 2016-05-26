package com.ty.design.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.ty.design.base.BaseAction;
import com.ty.design.entity.FileUpload;
import com.ty.design.entity.User;
import com.ty.design.service.UserService;


/**
 * 用户登录注销
 * @author yc
 */
@SuppressWarnings("all")
@Controller
@Scope("prototype")
public class LoginLogoutAction extends BaseAction<User>{ 

	@Resource
	private UserService userService;
	
	/**
	 * 提供登录界面
	 * @return
	 */
	public String loginUI(){
		return "loginUI";
	}
	
	/**
	 * 提供注册界面
	 * @return
	 */
	public String registerUI(){
		return "registerUI";
	}
	
	/**
	 * 用户登录
	 * @return
	 */
	public String login(){
		//根据用户名、密码获取当前用户
		User user = userService.getByUsernameAndPassword(model.getUsername(),model.getPassword()); 
		
		if(user == null){
			addFieldError("message","用户名或密码不正确 !");
			//登录失败,返回登录界面
			return "loginUI";
		}else{
			//登录成功，并存放对象信息，进入主页 
			ActionContext.getContext().getSession().put("user", user);
			return "toIndex";
		}
	}
	
	/**
	 * 用户注册
	 * @return
	 */
	public String register(){

		//根据用户名查找该注册用户是否存在
		User user = userService.findByUsername(model.getUsername());
		//用户为空,可以注册
		if(user==null){
			userService.save(model); 
			//注册成功，返回登录界面
			return "loginUI";
		}else{
			addFieldError("username", "该账号已注册,请务重复注册！");
			return "registerUI";
		}
	}
	
	/**
	 * 用户注销
	 * @return
	 */
	public String logout(){
		ActionContext.getContext().getSession().remove("user");
		return "loginUI";
	}
}
