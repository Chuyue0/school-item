package com.ty.design.action;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.ty.design.base.BaseAction;
import com.ty.design.entity.DisasterInfo;

/**
 * 我的收藏
 */
@Controller
@Scope("prototype")
@SuppressWarnings("serial")
public class CollectionsAction extends BaseAction<DisasterInfo>{
	
	//定义一个map集合，保存参数
	Map<String, String> paramsMap = new HashMap<String,String>();
	
	/**
	 * 查看收藏列表信息
	 * @return
	 */
	public String collectionsList(){
		//设置页面带来的参数
		setParams();
		List<DisasterInfo> collectionsList = disasterInfoService.findAllByCollections(paramsMap);
		ActionContext.getContext().put("collectionsList", collectionsList); 
		return "collectionsList";
	}
	
	
	/**
	 * 添加收藏信息(综合查询页面收藏)
	 */
	public String addCollections(){
		//根据id获取当前修改对象
		DisasterInfo disasterInfo = disasterInfoService.getById(model.getId());
		//设置收藏状态为1:收藏
		disasterInfo.setCollections("1");  
		disasterInfo.setUpdateTime(new Date()); 
		disasterInfoService.update(disasterInfo);
		return "addCollections";
	}
	
	/**
	 * 添加收藏信息(名称查询页面收藏)
	 */
	public String addCollectionsName(){
		//根据id获取当前修改对象
		DisasterInfo disasterInfo = disasterInfoService.getById(model.getId());
		//设置收藏状态为1:收藏
		disasterInfo.setCollections("1");  
		disasterInfo.setUpdateTime(new Date()); 
		disasterInfoService.update(disasterInfo);
		return "addCollectionsName";
	}
	/**
	 * 添加收藏信息(类型查询页面收藏)
	 */
	public String addCollectionsType(){
		//根据id获取当前修改对象
		DisasterInfo disasterInfo = disasterInfoService.getById(model.getId());
		//设置收藏状态为1:收藏
		disasterInfo.setCollections("1");  
		disasterInfo.setUpdateTime(new Date()); 
		disasterInfoService.update(disasterInfo);
		return "addCollectionsType";
	}
	/**
	 * 添加收藏信息(年份查询页面收藏)
	 */
	public String addCollectionsYears(){
		//根据id获取当前修改对象
		DisasterInfo disasterInfo = disasterInfoService.getById(model.getId());
		//设置收藏状态为1:收藏
		disasterInfo.setCollections("1");  
		disasterInfo.setUpdateTime(new Date()); 
		disasterInfoService.update(disasterInfo);
		return "addCollectionsYears";
	}
	
	/**
	 * 取消收藏信息 
	 * @return
	 */
	public String cancelCollections(){
		//根据id获取当前修改对象
		DisasterInfo disasterInfo = disasterInfoService.getById(model.getId());
		//设置收藏状态为0:未收藏
		disasterInfo.setCollections("0");
		disasterInfoService.update(disasterInfo); 
		
		//取消收藏后，等于移除掉一条记录，需要重新刷新页面
		setParams();
		List<DisasterInfo> collectionsList = disasterInfoService.findAllByCollections(paramsMap);
		ActionContext.getContext().put("collectionsList", collectionsList); 
		return "collectionsList";
	}
	
	//设置参数
	public void setParams(){
		if(paramsMap!=null){
			//页面传递过来的参数：类型
			String types = model.getTypes();
			//页面传递过来的参数：名称
			String name = model.getName();
			//页面传递过来的参数：年份
			String years = model.getYears(); 
			//页面传递过来的参数：收藏
			String collections = model.getCollections();
			if(types!=null && !"".equals(types)){
				paramsMap.put("types",types);
			}
			if(name!=null && !"".equals(name)){
				paramsMap.put("name",name);
			}
			if(years!=null && !"".equals(years)){
				paramsMap.put("years",years);
			}
			if(collections!=null && !"".equals(collections)){
				paramsMap.put("collections",collections);
			}
		}else{
			paramsMap = null;
		}
	}	
}
