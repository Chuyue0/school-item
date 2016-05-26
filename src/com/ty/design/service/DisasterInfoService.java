package com.ty.design.service;

import java.util.List;
import java.util.Map;

import com.ty.design.base.BaseDao;
import com.ty.design.entity.DisasterInfo;

public interface DisasterInfoService extends BaseDao<DisasterInfo> {


	List<DisasterInfo> findAllByTypes(String types);

	List<DisasterInfo> findAllByCollections();
	
	//test
	List<DisasterInfo> findAllByCollections(Map<String, String> paramsMap);

	List<DisasterInfo> findAllByParams(Map<String, String> paramsMap); 

	List<DisasterInfo> findAllTypes();

	void deleteByEntity(DisasterInfo disasterInfo);

	DisasterInfo findById(Long id);

	List<Map<String,Object>> provinceSumCount();

	List<Map<String, Object>> typesSumCount();

	List<DisasterInfo> findAllYears();

}
