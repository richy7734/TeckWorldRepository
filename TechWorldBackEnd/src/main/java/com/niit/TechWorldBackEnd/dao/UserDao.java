package com.niit.TechWorldBackEnd.dao;

import com.niit.TechWorldBackEnd.model.BillingAddress;
import com.niit.TechWorldBackEnd.model.User;

public interface UserDao {

	public String addUser(User user);
	public void updateUser(User user);
	public User getUserById(int id);
	public String addBillingAddress(BillingAddress billingAddress);
	public String updateBillingAddress(BillingAddress billingAddress);
}
