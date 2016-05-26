package com.ty.design.entity;

import java.io.Serializable;

/**
 * 防治措施
 */
@SuppressWarnings("all")
public class PreventionInfo implements Serializable{
	
	private Long id;
	/**防治方法*/
	private String preMethod;
	/**分析*/
	private String analyzes;
	
	private DisasterInfo disasterInfo;//所属的灾害信息

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getPreMethod() {
		return preMethod;
	}

	public void setPreMethod(String preMethod) {
		this.preMethod = preMethod;
	}

	public String getAnalyzes() {
		return analyzes;
	}

	public void setAnalyzes(String analyzes) {
		this.analyzes = analyzes;
	}

	public DisasterInfo getDisasterInfo() {
		return disasterInfo;
	}

	public void setDisasterInfo(DisasterInfo disasterInfo) {
		this.disasterInfo = disasterInfo;
	}

}
