package com.ty.design.action;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.ty.design.base.BaseAction;
import com.ty.design.entity.FileUpload;

/**
*病虫害图片（列表）
*/
@Controller
@Scope("prototype")
@SuppressWarnings("all")
public class FileUploadAction extends BaseAction<FileUpload>{ 

	public String list(){
		List<FileUpload> fileUploadsList =  fileUploadService.findAllByTimes();
		ActionContext.getContext().put("fileUploadsList", fileUploadsList);
		return "list";
	}
}
