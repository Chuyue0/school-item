package com.ty.design.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * 文件上传（灾害图片）
 */
@SuppressWarnings("all")
public class FileUpload implements Serializable{

	private Long id;
	/**上传文件的名称，文件的uuid名*/
	private String uuidname;
	/**上传文件的真实名称(原来的名称)*/
	private String filename;
	/**文件保存的路径*/
	private String savepath;
	/**上传时间*/
	private Date times;
	
	private Long disaterinfoId;
	
	
	public Long getDisaterinfoId() {
		return disaterinfoId;
	}

	public void setDisaterinfoId(Long disaterinfoId) {
		this.disaterinfoId = disaterinfoId;
	}

	private DisasterInfo disasterInfo;//所属的灾害信息

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUuidname() {
		return uuidname;
	}

	public void setUuidname(String uuidname) {
		this.uuidname = uuidname;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getSavepath() {
		return savepath;
	}

	public void setSavepath(String savepath) {
		this.savepath = savepath;
	}

	public Date getTimes() {
		return times;
	}

	public void setTimes(Date times) {
		this.times = times;
	}

	public DisasterInfo getDisasterInfo() {
		return disasterInfo;
	}

	public void setDisasterInfo(DisasterInfo disasterInfo) {
		this.disasterInfo = disasterInfo;
	}

}
