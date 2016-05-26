package com.ty.design.action;

import java.util.Date;
import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.ty.design.base.BaseAction;
import com.ty.design.entity.Notice;

/**
 * 公告管理
 */
@Controller
@Scope("prototype")
@SuppressWarnings("serial") 
public class NoticeAction extends BaseAction<Notice>{

	//获取公告列表
	public String list(){ 
		List<Notice> noticeList = noticeService.findAll();
		ActionContext.getContext().put("noticeList", noticeList); 
		return "list";
	}
	
	//获取详细信息
	public String detail(){
		Notice notice =  noticeService.getById(model.getId());
		ActionContext.getContext().getValueStack().push(notice);
		return "detail";
	}
	
	//添加界面
	public String addUI(){
		return "addUI"; 
	}
	
	//保存新闻
	public String add(){
		model.setTimes(new Date());
		noticeService.save(model);  
		return "toList";
	}

	public String editUI(){
		//准备回显的数据
		Notice notice= noticeService.getById(model.getId());
		//struts机制，将对象放入栈顶，页面可以直接取值
		ActionContext.getContext().getValueStack().push(notice);
		return "editUI";
	}
	
	//修改
	public String edit(){
		model.setTimes(new Date()); 
		noticeService.update(model);  
		return "toList";
	}
	
	public String delete(){
		noticeService.delete(model.getId());  
		return "toList";
	}
	
}
