package com.pojo;

import java.util.Date;

public class Store {
		private String userId;
		private String invitationId;
		private Date storeDate;
		
		public Store() {}
		
		public Store(String userId, String invitationId, Date storeDate) {
			super();
			this.userId = userId;
			this.invitationId = invitationId;
			this.storeDate = storeDate;
		}

		public String getUserId() {
			return userId;
		}

		public void setUserId(String userId) {
			this.userId = userId;
		}

		public String getInvitationId() {
			return invitationId;
		}

		public void setInvitationId(String invitationId) {
			this.invitationId = invitationId;
		}

		public Date getStoreDate() {
			return storeDate;
		}

		public void setStoreDate(Date storeDate) {
			this.storeDate = storeDate;
		}
		
		
}
