package com.ty.design.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ty.design.entity.FileUpload;
import com.ty.design.service.FileUploadService;

/**
 * 首页加载界面（top、left、right、bottom）
 */
@SuppressWarnings("serial")
@Controller
@Scope("prototype")
public class IndexAction extends ActionSupport{
	
	@Resource
	FileUploadService fileUploadService;
	
	public String index(){
		return "index";
	}
	
	public String top(){
		return "top";
	}
	
	public String left(){
		return "left";
	}
	
	public String right(){
		//存放图片信息，轮播图显示
		List<FileUpload> fileUploadsList = fileUploadService.findFiveByTimes();
		ActionContext.getContext().put("fileUploadsList", fileUploadsList);
		return "right";
	}
	
	public String bottom(){
		return "bottom";
	}
	
}
