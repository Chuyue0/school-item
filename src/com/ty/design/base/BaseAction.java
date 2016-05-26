package com.ty.design.base;

import java.lang.reflect.ParameterizedType;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.ty.design.entity.User;
import com.ty.design.service.DisasterInfoService;
import com.ty.design.service.FileUploadService;
import com.ty.design.service.NewsService;
import com.ty.design.service.NoticeService;
import com.ty.design.service.PreventionInfoService;
import com.ty.design.service.UserService;

@SuppressWarnings("all")
public abstract class BaseAction<T>  extends ActionSupport implements ModelDriven<T> {

	@Resource
	public UserService userService;
	
	@Resource
	public NewsService newsService;
	
	@Resource
	public NoticeService noticeService;	 
	
	@Resource
	public DisasterInfoService disasterInfoService;
	
	@Resource
	public PreventionInfoService preventionInfoService;
	
	@Resource
	public FileUploadService fileUploadService;
	
	protected T model;
	
	public T getModel() {
		return this.model;
	}
	
	//通过反射获取真实对象
	public BaseAction(){
		try {
			ParameterizedType type = (ParameterizedType) this.getClass().getGenericSuperclass();
			Class clazz = (Class) type.getActualTypeArguments()[0];
			model = (T) clazz.newInstance();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 获取当前登录的用户
	 * @return
	 */
	protected User getCurrentUser(){
		return (User) ActionContext.getContext().getSession().get("user");
	}

}
