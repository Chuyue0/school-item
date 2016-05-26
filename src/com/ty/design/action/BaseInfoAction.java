package com.ty.design.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

/**
 * 基本信息简介（玉米、病虫害）
 */
@Controller
@Scope("prototype")
@SuppressWarnings("serial")
public class BaseInfoAction extends ActionSupport{

	//玉米基本信息简介
	public String maizeBaseInfo(){
		return "maizeBaseInfo";
	}
	
	//病虫害基本信息简介
	public String disasterBaseInfo(){
		return "disasterBaseInfo";
	}
}
