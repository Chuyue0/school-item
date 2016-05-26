package com.ty.design.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * 通知公告
 */
@SuppressWarnings("all")
public class Notice implements Serializable{

	private Long id;
	/**标题*/
	private String title;
	/**内容*/
	private String content;
	/**部门*/
	private String department;
	/**时间*/
	private Date times;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public Date getTimes() {
		return times;
	}
	public void setTimes(Date times) {
		this.times = times;
	}
}
