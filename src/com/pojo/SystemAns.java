package com.pojo;

import java.util.Date;

public class SystemAns {
		private String systemId;
		private String userId;
		private String message;
		private Integer isRead;
		private Date createDate;
		
		public SystemAns(String systemId, String userId, String message, Integer isRead, Date createDate) {
			super();
			this.systemId = systemId;
			this.userId = userId;
			this.message = message;
			this.isRead = isRead;
			this.createDate = createDate;
		}

		public String getSystemId() {
			return systemId;
		}

		public void setSystemId(String systemId) {
			this.systemId = systemId;
		}

		public String getUserId() {
			return userId;
		}

		public void setUserId(String userId) {
			this.userId = userId;
		}

		public String getMessage() {
			return message;
		}

		public void setMessage(String message) {
			this.message = message;
		}

		public Integer getIsRead() {
			return isRead;
		}

		public void setIsRead(Integer isRead) {
			this.isRead = isRead;
		}

		public Date getCreateDate() {
			return createDate;
		}

		public void setCreateDate(Date createDate) {
			this.createDate = createDate;
		}
		
		
}
