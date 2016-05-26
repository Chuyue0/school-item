package com.ty.design.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * 新闻
 */
@SuppressWarnings("all")
public class News implements Serializable{

	private Long id;
	/**标题*/
	private String title;
	/**来源*/
	private String resource;
	/**内容*/
	private String content;
	/**作者*/
	private String author;
	/**编辑人*/
	private String editor;
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
	public String getResource() {
		return resource;
	}
	public void setResource(String resource) {
		this.resource = resource;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getEditor() {
		return editor;
	}
	public void setEditor(String editor) {
		this.editor = editor;
	}
	public Date getTimes() {
		return times;
	}
	public void setTimes(Date times) {
		this.times = times;
	}
	
}
