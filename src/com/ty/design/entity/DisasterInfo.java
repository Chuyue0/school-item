package com.ty.design.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Transient;

/**
 *  病虫害基本信息
 */
@SuppressWarnings("all")
public class DisasterInfo implements Serializable{

	private Long id;
	/**名称*/
	private String name;
	/**省区域*/
	private String province;
	/**市区域*/
	private String city;
	/**区区域*/
	private String counties;
	/**出现时间(年、月)*/
	private String years;
	/**更新时间*/
	private Date updateTime;
	/**病原*/
	private String pathogen;
	/**类型(1:病害;2:虫害)*/
	private String types;
	/**症状*/
	private String symptoms;
	/**发病规律*/
	private String regulation;
	
	/**收藏，0:表示未收藏;1:表示收藏*/
	private String collections; 
	private Set<FileUpload> fileUploads = new HashSet<FileUpload>();//对应多个图片文件
	private Set<PreventionInfo> preventionInfos= new HashSet<PreventionInfo>();//对应多条防治措施
	
	
	//非数据库字段
	/**文件原名称*/
	private String filename;
	/**上传文件的名称，文件的uuid名*/
	private String uuidname;
	/**文件保存的路径*/
	private String savepath;
	
	private Date times;
	@Transient
	private String hiddenUploads;
	
	/**防治措施*/
	private String preventioninfo;
	
	
	public DisasterInfo(Long id, String name, String province, String city, String counties, String years,
			Date updateTime, String pathogen, String types, String symptoms, String regulation, String collections,
			String uuidname, String savepath) {
		super();
		this.id = id;
		this.name = name;
		this.province = province;
		this.city = city;
		this.counties = counties;
		this.years = years;
		this.updateTime = updateTime;
		this.pathogen = pathogen;
		this.types = types;
		this.symptoms = symptoms;
		this.regulation = regulation;
		this.collections = collections;
		this.fileUploads = fileUploads;
		this.preventionInfos = preventionInfos;
		this.uuidname = uuidname;
		this.savepath = savepath;
	}
	
	
	@Override
	public String toString() {
		return "DisasterInfo [id=" + id + ", name=" + name + ", province=" + province + ", city=" + city + ", counties="
				+ counties + ", years=" + years + ", updateTime=" + updateTime + ", pathogen=" + pathogen + ", types="
				+ types + ", symptoms=" + symptoms + ", regulation=" + regulation + ", collections=" + collections
				+ ", uuidname=" + uuidname
				+ ", savepath=" + savepath + "]";
	}


	public DisasterInfo() {
		super();
	}
	public String getCollections() {
		return collections;
	}
	public void setCollections(String collections) {
		this.collections = collections;
	}
	public String getUuidname() {
		return uuidname;
	}
	public void setUuidname(String uuidname) {
		this.uuidname = uuidname;
	}
	public String getSavepath() {
		return savepath;
	}
	public void setSavepath(String savepath) {
		this.savepath = savepath;
	}
	public Set<FileUpload> getFileUploads() {
		return fileUploads;
	}
	public void setFileUploads(Set<FileUpload> fileUploads) {
		this.fileUploads = fileUploads;
	}
	public Set<PreventionInfo> getPreventionInfos() {
		return preventionInfos;
	}
	public void setPreventionInfos(Set<PreventionInfo> preventionInfos) {
		this.preventionInfos = preventionInfos;
	}
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getYears() {
		return years;
	}
	public Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	public void setYears(String years) {
		this.years = years;
	}
	public String getTypes() {
		return types;
	}
	public void setTypes(String types) {
		this.types = types;
	}
	public String getPathogen() {
		return pathogen;
	}
	public void setPathogen(String pathogen) {
		this.pathogen = pathogen;
	}
	public String getSymptoms() {
		return symptoms;
	}
	public void setSymptoms(String symptoms) {
		this.symptoms = symptoms;
	}
	public String getRegulation() {
		return regulation;
	}
	public void setRegulation(String regulation) {
		this.regulation = regulation;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getHiddenUploads() {
		return hiddenUploads;
	}
	public void setHiddenUploads(String hiddenUploads) {
		this.hiddenUploads = hiddenUploads;
	}
	public String getPreventioninfo() {
		return preventioninfo;
	}
	public void setPreventioninfo(String preventioninfo) {
		this.preventioninfo = preventioninfo;
	}
	public Date getTimes() {
		return times;
	}
	public void setTimes(Date times) {
		this.times = times;
	}
	
}
