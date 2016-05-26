package com.ty.design.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import com.opensymphony.xwork2.ActionContext;
import com.ty.design.base.BaseAction;
import com.ty.design.entity.DisasterInfo;
import com.ty.design.entity.PreventionInfo;

import net.sf.json.JSONArray;

/**
 * 病虫害信息
 */
@Controller
@Scope("prototype")
@SuppressWarnings("all")
public class DisasterInfoAction extends BaseAction<DisasterInfo>{
	
	//定义一个map集合，保存参数
	Map<String, String> paramsMap = new HashMap<String,String>();
	
	//定义一个map结合，统计表数据准备
	Map<String, Object> resultMap = new HashMap<String,Object>();

	/**
	 * 病虫害综合查询
	 * @return
	 */
	public String list(){
		
		//设置页面带来的参数
		setParams();
		List<DisasterInfo> list = disasterInfoService.findAllByParams(paramsMap);
		ActionContext.getContext().put("disasterInfoList", list); 
		
		//获取灾害类型，为页面做准备
		List<DisasterInfo> disasterInfoTypes = disasterInfoService.findAllTypes();
		ActionContext.getContext().put("disasterInfoTypes", disasterInfoTypes);
		
		//获取所有年份，为页面做准备
		List<DisasterInfo> yearsList =  disasterInfoService.findAllYears();
		ActionContext.getContext().put("yearsList", yearsList);
		return "list";
	}
	
	/**
	 * 病虫害名称查询
	 * @return
	 */
	public String listName(){
		
		//设置页面带来的参数
		setParams();
		List<DisasterInfo> list = disasterInfoService.findAllByParams(paramsMap);
		ActionContext.getContext().put("disasterInfoList", list); 
		return "listName";
	}
	
	/**
	 * 病虫害类型查询
	 * @return
	 */
	public String listType(){
		
		//设置页面带来的参数
		setParams();
		List<DisasterInfo> list = disasterInfoService.findAllByParams(paramsMap);
		ActionContext.getContext().put("disasterInfoList", list); 
		
		//获取灾害类型，为页面做准备
		List<DisasterInfo> disasterInfoTypes = disasterInfoService.findAllTypes();
		ActionContext.getContext().put("disasterInfoTypes", disasterInfoTypes);
		return "listType";
	}
	
	/**
	 * 按年份查询
	 * @return
	 */
	public String listYears(){
		
		//设置页面带来的参数
		setParams();
		List<DisasterInfo> list = disasterInfoService.findAllByParams(paramsMap);
		ActionContext.getContext().put("disasterInfoList", list); 
		
		//获取所有年份，为页面做准备
		List<DisasterInfo> yearsList =  disasterInfoService.findAllYears();
		ActionContext.getContext().put("yearsList", yearsList);
		return "listYears";
	}
	

	/**
	 * 查看病虫害详细信息
	 * @return
	 */
	public String detail(){
		DisasterInfo disasterInfo = disasterInfoService.findById(model.getId());
		ActionContext.getContext().getValueStack().push(disasterInfo);
		
		List<PreventionInfo> preventionInfoList = preventionInfoService.findByDisasterInfo(disasterInfo);
		ActionContext.getContext().put("preventionInfoList", preventionInfoList); 
		return "detail";
	}
	
	/**
	 * 添加病虫害信息界面
	 * @return
	 */
	public String addUI(){
		//准备灾害类型数据
		List<DisasterInfo> disasterInfoTypes = disasterInfoService.findAllTypes();
		ActionContext.getContext().put("disasterInfoTypes", disasterInfoTypes);
		return "addUI";
	}
	
	/**
	 * 根据id删除指定对象
	 * @return
	 */
	public String delete(){
		disasterInfoService.delete(model.getId()); 
		return "toList";
	}
	
	/**
	 * 灾害特征统计(1:统计各省出现的灾害数量)
	 * @return
	 */
	public String tatisticsProvince(){
		List<Map<String,Object>> list =  disasterInfoService.provinceSumCount(); 
		List areaList=new ArrayList();//横坐标名字
		List provinceCountList=new ArrayList();//各省灾害数量统计
		
		for(Map<String, Object> m:list){
			areaList.add(m.get("province"));
			provinceCountList.add(m.get("count"));
		}
		
		resultMap.put("areaList",JSONArray.fromObject(areaList).toString());
		resultMap.put("provinceCountList",JSONArray.fromObject(provinceCountList).toString());
		
		return "tatisticsProvince";  
	}
	
	/**
	 * 灾害特征统计(2:统计不同类型的灾害数量)
	 * @return
	 */
	public String tatisticsTypes(){
		List<Map<String,Object>> list =  disasterInfoService.typesSumCount(); 
		List typesList=new ArrayList();//横坐标名字
		List typesCountList=new ArrayList();//不同病虫害类型数量统计
		
		for(Map<String, Object> m:list){
			typesList.add(m.get("types"));
			typesCountList.add(m.get("count"));
		}
		
		resultMap.put("typesList",JSONArray.fromObject(typesList).toString());
		resultMap.put("typesCountList",JSONArray.fromObject(typesCountList).toString());
		
		return "tatisticsTypes";
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
	
	//-------------------------------------------------------
	public Map<String, Object> getResultMap() {
		return resultMap;
	}
	public void setResultMap(Map<String, Object> resultMap) {
		this.resultMap = resultMap;
	}
}





