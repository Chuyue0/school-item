package com.ty.design.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;

import com.ty.design.base.BaseDaoImpl;
import com.ty.design.entity.DisasterInfo;
import com.ty.design.entity.FileUpload;
import com.ty.design.entity.PreventionInfo;
import com.ty.design.service.PreventionInfoService;

@Service
public class PreventionInfoServiceImpl extends BaseDaoImpl<PreventionInfo> implements PreventionInfoService {

	@SuppressWarnings("unchecked")
	@Override
	public List<PreventionInfo> findByDisasterInfo(DisasterInfo disasterInfo) {
		return getSession().createQuery("from PreventionInfo p where p.disasterInfo=?")//
				.setParameter(0, disasterInfo)//
				.list();
	}

	@Override
	public void add(DisasterInfo model) {
		this.getSession().save(model);
		String hiddenUploads = model.getHiddenUploads();
		Long id = model.getId();
		
		FileUpload fileUpload = new FileUpload();
		fileUpload.setFilename(hiddenUploads);
		String newName="images/disater_image";
		String fileName = model.getFilename();
		fileUpload.setSavepath(newName);
		fileUpload.setUuidname(fileName);
		fileUpload.setTimes(new Date());
		DisasterInfo disasterInfo = new DisasterInfo();
		disasterInfo.setId(id);
		
		fileUpload.setDisasterInfo(disasterInfo);
		this.getSession().save(fileUpload);
		
		PreventionInfo info = new PreventionInfo();
		info.setPreMethod(model.getPreventioninfo());
		info.setDisasterInfo(disasterInfo);
		this.getSession().save(info);
	}

}
