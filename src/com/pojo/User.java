package com.pojo;

import java.util.Date;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;

public class User {
	private String userId;
	@NotBlank(message="账户不能为空")
	@Length(min=4,message="账户字符不能少于4个")
	private String userName;
	@NotBlank(message="密码不能为空")
	@Length(min=4,message="密码字符不能少于4个")
	private String userPsw;
	private String userAlice;
	private String userEmail;
	private String userPhone;
	private String userSex;
	private String userPhoto;
	public String getUserPhoto() {
		return userPhoto;
	}

	public void setUserPhoto(String userPhoto) {
		this.userPhoto = userPhoto;
	}

	private Level userLevel;
	private Date levelDown;
	private Date userLock;
	private Date userCreateDate;
	private Integer isPass;	// 暂时不用


	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPsw() {
		return userPsw;
	}

	public void setUserPsw(String userPsw) {
		this.userPsw = userPsw;
	}

	public String getUserAlice() {
		return userAlice;
	}

	public void setUserAlice(String userAlice) {
		this.userAlice = userAlice;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserSex() {
		return userSex;
	}

	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}

	public Level getUserLevel() {
		return userLevel;
	}

	public void setUserLevel(Level userLevel) {
		this.userLevel = userLevel;
	}

	public Date getLevelDown() {
		return levelDown;
	}

	public void setLevelDown(Date levelDown) {
		this.levelDown = levelDown;
	}

	public Date getUserCreateDate() {
		return userCreateDate;
	}

	public void setUserCreateDate(Date userCreateDate) {
		this.userCreateDate = userCreateDate;
	}

	public Date getUserLock() {
		return userLock;
	}

	public void setUserLock(Date userLock) {
		this.userLock = userLock;
	}

	public Integer getIsPass() {
		return isPass;
	}

	public void setIsPass(Integer isPass) {
		this.isPass = isPass;
	}

	
	
	
}
