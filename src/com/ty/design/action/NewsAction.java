package com.ty.design.action;

import java.util.Date;
import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.ty.design.base.BaseAction;
import com.ty.design.entity.News;

/**
 * 新闻管理
 */
@Controller
@Scope("prototype")
@SuppressWarnings("serial") 
public class NewsAction extends BaseAction<News>{

	//获取新闻列表
	public String list(){ 
		List<News> newsList = newsService.findAll();
		ActionContext.getContext().put("newsList", newsList); 
		return "list";
	}
	
	//获取详细信息
	public String detail(){
		News news =  newsService.getById(model.getId());
		ActionContext.getContext().getValueStack().push(news);
		return "detail";
	}
	
	//添加界面
	public String addUI(){
		return "addUI";
	}

	//保存新闻
	public String add(){
		model.setTimes(new Date()); 
		newsService.save(model); 
		return "toList";
	}
	
	//编辑界面
	public String editUI(){
		//准备回显的数据
		News news = newsService.getById(model.getId());
		//struts机制，将对象放入栈顶，页面可以直接取值
		ActionContext.getContext().getValueStack().push(news);
		return "editUI";
	}
	
	//修改
	public String edit(){
		model.setTimes(new Date()); 
		newsService.update(model);  
		return "toList";
	}
	
	//删除
	public String delete(){
		newsService.delete(model.getId());  
		return "toList";
	}
}
