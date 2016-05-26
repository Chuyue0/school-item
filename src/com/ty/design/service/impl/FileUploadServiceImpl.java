package com.ty.design.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ty.design.base.BaseDaoImpl;
import com.ty.design.entity.FileUpload;
import com.ty.design.service.FileUploadService;

@Service
public class FileUploadServiceImpl extends BaseDaoImpl<FileUpload> implements FileUploadService{

	@Override
	public FileUpload getByDisasterInfoId(Long id) {
		return (FileUpload) getSession().createQuery("from FileUpload f where f.disasterinfoid ="+id).uniqueResult(); 
	}

	@Override
	public List<FileUpload> findAllByTimes() {
		return getSession().createQuery("from FileUpload f order by f.times desc").list();
	}

	@Override
	public List<FileUpload> findFiveByTimes() { 
		//setMaxResults(5)设置最大记录为5
		return getSession().createQuery("from FileUpload f order by f.times desc").setFirstResult(0).setMaxResults(5).list();
	}

}
