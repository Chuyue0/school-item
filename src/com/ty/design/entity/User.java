package com.ty.design.entity;

import java.io.Serializable;

/**
 * 用户
 */
public class User implements Serializable{

	private static final long serialVersionUID = 4419365778670020625L;
	
	private Long id;
	/**用户名*/
	private String username;
	/**密码*/
	private String password;
	/**真实姓名*/
	private String realName;
	/**性别*/
	private String gender;
	/**联系电话*/
	private String phoneNumber;
	/**邮箱*/
	private String email;
	/**地址*/
	private String address;
	
	/**非数据库字段，用于校验密码是否一致*/
	private String password1;
	private String password2;
	
	public String getPassword1() {
		return password1;
	}
	public void setPassword1(String password1) {
		this.password1 = password1;
	}
	public String getPassword2() {
		return password2;
	}
	public void setPassword2(String password2) {
		this.password2 = password2;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRealName() {
		return realName;
	}
	public void setRealName(String realName) {
		this.realName = realName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}
