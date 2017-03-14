package com.niit.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.niit.TechWorldBackEnd.dao.CartDao;
import com.niit.TechWorldBackEnd.dao.UserDao;
import com.niit.TechWorldBackEnd.model.BillingAddress;
import com.niit.TechWorldBackEnd.model.User;
import com.niit.TechWorldBackEnd.model.UserModel;

@Component
public class AppHandler {

	@Autowired
	UserDao userDao;
	
	@Autowired
	CartDao cartDao;
	
	/*
	 * Initializing the Entity class for web-flow.
	 */
	public UserModel initFlow() {

		return new UserModel();
	}

	/*
	 * Method to register the user and create a new cart for the user.
	 */
	public String addUser(User user) {
		userDao.addUser(user);
		cartDao.createCart(user.getId());
		return "true";
	}

	/*
	 * Method to add billing address of user Data Base.
	 * */
	public String addUserAddress(BillingAddress billingAddress,User user){
		billingAddress.setCid(user.getId());
		return userDao.addBillingAddress(billingAddress);
	}
	
}
