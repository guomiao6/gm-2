package com.gm.entity;

import java.sql.Date;

import org.hibernate.validator.constraints.NotBlank;

public class User {
	@NotBlank
	private String username;
	private String nickname;
	@NotBlank
	private String password;
	
	private Date createDate;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	@Override
	public String toString() {
		return "User [username=" + username + ", nickname=" + nickname
				+ ", password=" + password + ", createDate=" + createDate + "]";
	}
	
}
