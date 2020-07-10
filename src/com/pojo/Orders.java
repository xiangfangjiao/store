package com.pojo;

import java.util.Date;

public class Orders {
		private Integer oid;
		private User user;
		private Goods goods;
		private Integer isornotpay;
		private String payway;
		private Integer count;
		private Double curPrice;
		private Double total;
		private String address;
		private Date date;
		public Integer getIsornotpay() {
			return isornotpay;
		}
		public void setIsornotpay(Integer isornotpay) {
			this.isornotpay = isornotpay;
		}
		public String getAddress() {
			return address;
		}
		public void setAddress(String address) {
			this.address = address;
		}
		public User getUser() {
			return user;
		}
		public void setUser(User user) {
			this.user = user;
		}
		public Goods getGoods() {
			return goods;
		}
		public void setGoods(Goods goods) {
			this.goods = goods;
		}
		public Integer getOid() {
			return oid;
		}
		public void setOid(Integer oid) {
			this.oid = oid;
		}
		public Integer getCount() {
			return count;
		}
		public void setCount(Integer count) {
			this.count = count;
		}
		public Double getTotal() {
			return total;
		}
		public void setTotal(Double total) {
			this.total = total;
		}
		public String getPayway() {
			return payway;
		}
		public void setPayway(String payway) {
			this.payway = payway;
		}
		public Double getCurPrice() {
			return curPrice;
		}
		public void setCurPrice(Double curPrice) {
			this.curPrice = curPrice;
		}
		public Date getDate() {
			return date;
		}
		public void setDate(Date date) {
			this.date = date;
		}
		
		
		
}
