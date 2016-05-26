package com.ty.design.service;

import java.util.List;

import com.ty.design.base.BaseDao;
import com.ty.design.entity.DisasterInfo;
import com.ty.design.entity.PreventionInfo;

public interface PreventionInfoService extends BaseDao<PreventionInfo> {

	List<PreventionInfo> findByDisasterInfo(DisasterInfo disasterInfo);

	void add(DisasterInfo model); 

}
