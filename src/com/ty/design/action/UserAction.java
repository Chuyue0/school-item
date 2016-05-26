package com.ty.design.action;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.ty.design.base.BaseAction;
import com.ty.design.entity.User;

/**
 * 用户管理
 */
@Controller
@Scope("prototype")
@SuppressWarnings("all")
public class UserAction extends BaseAction<User>{
	
	/**查看个人信息*/
	public String infomation(){
		return "infomation";
	}    
	
	/**个人信息修改界面*/
	public String editInfomationUI(){
		return "editInfomationUI";
	}
	
	/**保存个人信息*/
	public String save(){
		User oldUser = userService.getById(model.getId());
		model.setId(oldUser.getId());
		model.setPassword(oldUser.getPassword()); 
		userService.update(model);
		User user = userService.getById(model.getId());
		ActionContext.getContext().getSession().put("user", user);
		return "save";
	}
	
	/**修改个人密码界面*/
	public String updatePasswordUI(){
		return "updatePasswordUI";
	}
	
	/**修改个人密码*/ 
	public String updatePassword(){
		User user = userService.getById(model.getId());
		String password1 = model.getPassword1(); 
		String password2 = model.getPassword2();
		if(password1.equals(password2) && password1!=null && !"".equals(password1) && password2!=null && !"".equals(password2)){
			user.setPassword(password1);
			userService.update(user); 
			ActionContext.getContext().put("message", "恭喜密码修改成功，请重新登录！");
			ActionContext.getContext().getSession().remove("user");
			return "updatePasswordSuccess";
		}else{
			ActionContext.getContext().put("message", "密码不能为空且密码需一致！");
			return "updatePasswordUI";
		}
	}
	
	/**查询所有用户*/
	public String list(){ 
		List<User> userList = userService.findAll();
		ActionContext.getContext().put("userList", userList); 
		return "list";
	}
	
	public String addUI(){
		return "saveUI";
	}

	public String add(){
		userService.save(model); 
		return "toList";
	}
	
	public String editUI(){
		//准备回显的数据
		User user = userService.getById(model.getId());
		//struts机制，将对象放入栈顶，页面可以直接取值
		ActionContext.getContext().getValueStack().push(user);
		return "saveUI";
	}
	
	public String edit(){
		userService.update(model);  
		return "toList";
	}
	
	public String delete(){
		userService.delete(model.getId());  
		return "toList";
	}
	
	public String test(){ 
		return "test";
	}
	
	
}
