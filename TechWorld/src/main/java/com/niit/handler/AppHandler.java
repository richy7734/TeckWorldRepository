package com.niit.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.niit.TechWorldBackEnd.dao.UserDao;
import com.niit.TechWorldBackEnd.model.BillingAddress;
import com.niit.TechWorldBackEnd.model.User;
import com.niit.TechWorldBackEnd.model.UserModel;

@Component
public class AppHandler {

	@Autowired
	UserDao userDao;
	
	/*
	 * Initializing the Entity class for web-flow.
	 */
	public UserModel initFlow() {

		return new UserModel();
	}

	/*
	 * Method to register the user
	 */
	public String addUser(User user) {
		return userDao.addUser(user);
	}

	/*
	 * Method to add billing address of user Data Base.
	 * */
	public String addUserAddress(BillingAddress billingAddress,User user){
		billingAddress.setCid(user.getId());
		return userDao.addBillingAddress(billingAddress);
	}
	
}
