package com.niit.TechWorldBackEnd.model;

import java.io.Serializable;

public class UserModel implements Serializable {

	/*
	 * Model class for Registration web flow.
	 */
	private static final long serialVersionUID = 8682070041407843385L;
	private User user;
	private BillingAddress billingAddress;

	public UserModel(User user, BillingAddress billingAddress) {
		super();
		this.user = user;
		this.billingAddress = billingAddress;
	}

	public UserModel() {
		this.user = new User();
		this.billingAddress = new BillingAddress();
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public BillingAddress getBillingAddress() {
		return billingAddress;
	}

	public void setBillingAddress(BillingAddress billingAddress) {
		this.billingAddress = billingAddress;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
