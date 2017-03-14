package com.niit.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.niit.TechWorldBackEnd.dao.CartDao;
import com.niit.TechWorldBackEnd.dao.UserDao;
import com.niit.TechWorldBackEnd.model.BillingAddress;
import com.niit.TechWorldBackEnd.model.Cart;
import com.niit.TechWorldBackEnd.model.ShippingAddress;
import com.niit.TechWorldBackEnd.model.User;


@Component
public class CheckoutHandler {

	@Autowired
	User user;
	
	@Autowired
	UserDao userDao;
	
	@Autowired
	CartDao cartDao;
	
	@Autowired
	Cart cart;
	
	public BillingAddress initBillingAddress(int userId){
		System.out.println("User reached Web Flow :"+userId);
		user = userDao.getUserById(userId);
		return userDao.getBillingAddress(userId);
	}
	public Cart initCart(int userId){
		cart = cartDao.getCart(userId);
		System.out.println("Cart grand total : "+cart.getGrandTotal());
		
		return cart;
	}
	
	
	public String addShippingAddress(ShippingAddress shippingAddress){
		shippingAddress.setCid(user.getId());
		userDao.addShippingAddress(shippingAddress);
		return "true";
	}
	
}
