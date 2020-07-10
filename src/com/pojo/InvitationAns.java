package com.pojo;

import java.util.Date;

public class InvitationAns{
	private String ansId;
	private String ansMessage;
	private User user;
	private Date ansDate;
	public InvitationAns(String ansId, String ansMessage, User user, Date ansDate) {
		super();
		this.ansId = ansId;
		this.ansMessage = ansMessage;
		this.user = user;
		this.ansDate = ansDate;
	}
	public InvitationAns() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getAnsId() {
		return ansId;
	}
	public void setAnsId(String ansId) {
		this.ansId = ansId;
	}
	public String getAnsMessage() {
		return ansMessage;
	}
	public void setAnsMessage(String ansMessage) {
		this.ansMessage = ansMessage;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Date getAnsDate() {
		return ansDate;
	}
	public void setAnsDate(Date ansDate) {
		this.ansDate = ansDate;
	}
	
}
