package com.ty.design.service;

import java.util.List;

import com.ty.design.base.BaseDao;
import com.ty.design.entity.FileUpload;

public interface FileUploadService extends BaseDao<FileUpload> {

	FileUpload getByDisasterInfoId(Long id);

	List<FileUpload> findAllByTimes();

	List<FileUpload> findFiveByTimes(); 

}
