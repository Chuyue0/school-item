package com.ty.design.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;

import javax.annotation.Resource;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ty.design.entity.DisasterInfo;
import com.ty.design.service.DisasterInfoService;
import com.ty.design.service.FileUploadService;
import com.ty.design.service.PreventionInfoService;
import com.ty.design.utils.FileUploadUtil;

/**
 * 病虫害信息、防治措施、图片上传
 */
@Controller
@Scope("prototype")
@SuppressWarnings("all")
public class DisasterInfoUploadAction {
	@Resource
	public DisasterInfoService disasterInfoService;
	@Resource
	public PreventionInfoService preventionInfoService;
	@Resource
	public FileUploadService fileUploadService;
	
    private String name;  
    private String type;  
    private String years;  
    private String province;  
    private String city;  
    private String counties;  
    private String pathogen;  
    private String regulation;  
    private String symptoms;  
    private String preventioninfo;
    
	// fileUploads属性用来封装上传的文件  
    private File fileUploads;  
    // fileUploadsContentType属性用来封装上传文件的类型  
    private String fileUploadsContentType;  
    // fileUploadsFileName属性用来封装上传文件的文件名  
    private String fileUploadsFileName;  
    
    /**
	 * 添加病虫害信息(基本信息、图片、防治措施)
	 * @return
	 * @throws Exception 
	 */
	public String add() throws Exception{
		
        // 设置上传文件目录  
        String uploadPath = ServletActionContext.getServletContext()  
                .getRealPath("/images/disater_image");  
        File savefile = new File(new File(uploadPath), fileUploadsFileName);
        FileUtils.copyFile(fileUploads, savefile);
		DisasterInfo model = new DisasterInfo();
		model.setCity(city);
		model.setCounties(counties);
		model.setYears(years);
		model.setName(name);
		model.setTypes(type);
		model.setProvince(province);
		model.setRegulation(regulation);
		model.setSymptoms(symptoms);
		model.setFilename(fileUploadsFileName);
		model.setCollections("0");
		model.setUpdateTime(new Date()); 
		model.setPreventioninfo(preventioninfo);
		model.setTimes(new Date()); 
		preventionInfoService.add(model );
		
		return "addSuccess";
	}
    
	//------------------------------------
    public String getPreventioninfo() {
		return preventioninfo;
	}

	public void setPreventioninfo(String preventioninfo) {
		this.preventioninfo = preventioninfo;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getYears() {
		return years;
	}

	public void setYears(String years) {
		this.years = years;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCounties() {
		return counties;
	}

	public void setCounties(String counties) {
		this.counties = counties;
	}

	public String getPathogen() {
		return pathogen;
	}

	public void setPathogen(String pathogen) {
		this.pathogen = pathogen;
	}

	public String getRegulation() {
		return regulation;
	}

	public void setRegulation(String regulation) {
		this.regulation = regulation;
	}

	public String getSymptoms() {
		return symptoms;
	}

	public void setSymptoms(String symptoms) {
		this.symptoms = symptoms;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public File getFileUploads() {
		return fileUploads;
	}

	public void setFileUploads(File fileUploads) {
		this.fileUploads = fileUploads;
	}

	public String getFileUploadsContentType() {
		return fileUploadsContentType;
	}

	public void setFileUploadsContentType(String fileUploadsContentType) {
		this.fileUploadsContentType = fileUploadsContentType;
	}

	public String getFileUploadsFileName() {
		return fileUploadsFileName;
	}

	public void setFileUploadsFileName(String fileUploadsFileName) {
		this.fileUploadsFileName = fileUploadsFileName;
	}
}





