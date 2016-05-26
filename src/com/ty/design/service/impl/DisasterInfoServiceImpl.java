package com.ty.design.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.ty.design.base.BaseDaoImpl;
import com.ty.design.dao.DisasterInfoDao;
import com.ty.design.entity.DisasterInfo;
import com.ty.design.entity.FileUpload;
import com.ty.design.service.DisasterInfoService;

@Service
@SuppressWarnings("all")
public class DisasterInfoServiceImpl extends BaseDaoImpl<DisasterInfo> implements DisasterInfoService{

	@Override
	public List<DisasterInfo> findAllByTypes(String types) {
		return getSession().createQuery(//
				"from DisasterInfo d where d.types=? order by d.years desc")//
				.setParameter(0, types)//
				.list();   
	}

	@Override
	public List<DisasterInfo> findAllByCollections() {
		String hql = "from DisasterInfo d where d.collections = 1"; 
		return getSession().createQuery(hql).list();
	}

	@Override
	public List<DisasterInfo> findAllByCollections(Map<String, String> paramsMap) {
		String partHql = "";
		if(paramsMap!=null){
			String types = paramsMap.get("types");
			String name = paramsMap.get("name");
			String years = paramsMap.get("years");
			String collections = paramsMap.get("collections");
			
			if(types!=null && !"".equals(types)){ 
				partHql = partHql+" and types="+types;
			}
			if(name!=null && !"".equals(name)){ 
				partHql = partHql+" and name like '%"+name+"%'";
			}
			if(years!=null && !"".equals(years)){
				partHql = partHql+" and years = "+years;  
			}
			if(collections!=null && !"".equals(collections)){
				partHql = partHql+" and collections = "+collections;  
			}
		}
		return getSession().createQuery(""
				+ "SELECT "
				+ "new com.ty.design.entity.DisasterInfo("
				+ "dd.id,dd.name,dd.province,dd.city,dd.counties,dd.years,dd.updateTime,"
				+ "dd.pathogen,dd.types,dd.symptoms,dd.regulation,dd.collections,df.uuidname,df.savepath) "
				+ "FROM DisasterInfo AS dd,FileUpload AS df "
				+ "where dd.id = df.disasterInfo.id "+partHql+" and dd.collections=1 order by dd.updateTime desc").list(); 
	}
	
	@Override
	public List<DisasterInfo> findAllByParams(Map<String, String> paramsMap) {
		
		String partHql = "";
		if(paramsMap!=null){
			String types = paramsMap.get("types");
			String name = paramsMap.get("name");
			String years = paramsMap.get("years");
			String collections = paramsMap.get("collections");
			
			if(types!=null && !"".equals(types)){ 
				partHql = partHql+" and types="+types;
			}
			if(name!=null && !"".equals(name)){ 
				partHql = partHql+" and name like '%"+name+"%'";
			}
			if(years!=null && !"".equals(years)){
				partHql = partHql+" and years = "+years;  
			}
			if(collections!=null && !"".equals(collections)){
				partHql = partHql+" and collections = "+collections;  
			}
		}
	
		return getSession().createQuery("" 
				+ "SELECT "
				+ "new com.ty.design.entity.DisasterInfo("
				+ "dd.id,dd.name,dd.province,dd.city,dd.counties,dd.years,dd.updateTime,"
				+ "dd.pathogen,dd.types,dd.symptoms,dd.regulation,dd.collections,df.uuidname,df.savepath) "
				+ "FROM DisasterInfo AS dd,FileUpload AS df "
				+ "where dd.id = df.disasterInfo.id  "+partHql+" order by dd.updateTime desc,dd.years desc").list();
	}

	@Override
	public List<DisasterInfo> findAllTypes() {
		return getSession().createQuery("from DisasterInfo d group by d.types").list();
	}

	@Override
	public void deleteByEntity(DisasterInfo disasterInfo) {
		getSession().delete(disasterInfo);
	}

	@Override
	public DisasterInfo findById(Long id) {
		return (DisasterInfo) getSession().createQuery(""
				+ "SELECT "
				+ "new com.ty.design.entity.DisasterInfo("
				+ "dd.id,dd.name,dd.province,dd.city,dd.counties,dd.years,dd.updateTime,"
				+ "dd.pathogen,dd.types,dd.symptoms,dd.regulation,dd.collections,df.uuidname,df.savepath) "
				+ "FROM DisasterInfo AS dd,FileUpload AS df "
				+ "where dd.id = df.disasterInfo.id and dd.id="+id).uniqueResult();
	}

	@Override
	public List<Map<String,Object>> provinceSumCount() {
		List list = getSession().createSQLQuery("SELECT dd.province ,COUNT(dd.province) FROM des_disasterinfo dd GROUP BY dd.province ").list();
		List<Map<String,Object>> detailList = new ArrayList<Map<String,Object>>();
		
		for (int i = 0; i < list.size(); i++) {
			Map<String,Object> map = new HashMap<String,Object>();
			Object[] obj = (Object[]) list.get(i);
			map.put("province",obj[0]);
			map.put("count",obj[1]);
			detailList.add(map);
		}
		return detailList;
	}

	@Override
	public List<Map<String, Object>> typesSumCount() {
		List list = getSession().createSQLQuery("SELECT dd.types ,COUNT(1) FROM des_disasterinfo dd GROUP BY dd.types ").list();
		List<Map<String,Object>> detailList = new ArrayList<Map<String,Object>>();
		
		for (int i = 0; i < list.size(); i++) {
			Map<String,Object> map = new HashMap<String,Object>();
			Object[] obj = (Object[]) list.get(i);
			if("1".equals(obj[0])){
				map.put("types","病害");
			}
			if("2".equals(obj[0])){
				map.put("types","虫害");
			}
			map.put("count",obj[1]);
			detailList.add(map);
		}
		return detailList;
	}

	@Override
	public List<DisasterInfo> findAllYears() {
		return getSession().createQuery("from DisasterInfo d group by d.years").list();
	}

}


