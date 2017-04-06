package com.gm.entity;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Message entity. @author MyEclipse Persistence Tools
 */

public class Message {

	private Long no;
	private User user;
	private String content;
	private Timestamp createDate;
	private Set<ReplyMessage> replies = new HashSet<ReplyMessage>();
	
	
	
	public Set<ReplyMessage> getReplies() {
		return replies;
	}
	public void setReplies(Set<ReplyMessage> replies) {
		this.replies = replies;
	}
	public Long getNo() {
		return no;
	}
	public void setNo(Long no) {
		this.no = no;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Timestamp getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Timestamp createDate) {
		this.createDate = createDate;
	}
	@Override
	public String toString() {
		return "Message [no=" + no + ", user=" + user + ", content=" + content
				+ ", createDate=" + createDate + "]";
	}



}