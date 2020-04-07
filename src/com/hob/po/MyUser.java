package com.hob.po;

import java.util.Date;

public class MyUser {
	
	private int userId;
	private String username;
	private String password;
	private String sex;
	private Date createTime;
	public MyUser() {
		super();
	}
	public MyUser(int userId, String username, String password, String sex, Date createTime) {
		super();
		this.userId = userId;
		this.username = username;
		this.password = password;
		this.sex = sex;
		this.createTime = createTime;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
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
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	@Override
	public String toString() {
		return "User [userId=" + userId + ", username=" + username + ", password=" + password + ", sex=" + sex
				+ ", createTime=" + createTime + "]";
	}

}
