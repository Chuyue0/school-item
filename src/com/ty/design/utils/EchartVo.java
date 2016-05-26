package com.ty.design.utils;

import java.io.Serializable;

import org.apache.commons.lang.StringUtils;

public class EchartVo implements Serializable {

	private static final long serialVersionUID = -6268407316746364385L;
	
	String value;
	String provinceCode;
	String cityCode;
	String countiesCode;
	
	public EchartVo(String value,String provinceCode,String cityCode,String countiesCode){
		this.value=value;
		this.provinceCode=provinceCode;
		this.cityCode=cityCode;
		this.countiesCode=countiesCode;
	}
	
	public static String xAxisBr(String xName){
		StringBuffer sb=new StringBuffer();
		if(StringUtils.isNotBlank(xName)){
			for(int i=0;i<xName.length();i++){
				sb.append(xName.substring(i, i+1));
				if(i<xName.length()-1){
					sb.append("\\n");
				}
			}
		}
		return sb.toString();
	}
	
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	public String getProvinceCode() {
		return provinceCode;
	}
	public void setProvinceCode(String provinceCode) {
		this.provinceCode = provinceCode;
	}
	public String getCityCode() {
		return cityCode;
	}
	public void setCityCode(String cityCode) {
		this.cityCode = cityCode;
	}
	public String getCountiesCode() {
		return countiesCode;
	}
	public void setCountiesCode(String countiesCode) {
		this.countiesCode = countiesCode;
	}
	
}
