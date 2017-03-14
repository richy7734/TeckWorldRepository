package com.niit.TechWorldBackEnd.dao.impl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.TechWorldBackEnd.dao.UserDao;
import com.niit.TechWorldBackEnd.model.BillingAddress;
import com.niit.TechWorldBackEnd.model.ShippingAddress;
import com.niit.TechWorldBackEnd.model.User;

@Repository("userDao")
@Transactional
public class UserDaoImpl implements UserDao {

	@Autowired
	SessionFactory sessionFactory;
	
	/*
	 * Method to Register a user in the database.
	 * */
	public String addUser(User user) {
		
		try {
			sessionFactory.getCurrentSession().persist(user);
			return "true";
		} catch (Exception e) {
			e.printStackTrace();
			return "false";
		}
	}

	public void updateUser(User user) {
		// TODO Auto-generated method stub

	}

	/*
	 * Method to get user by user ID.
	 * */
	public User getUserById(int id) {
		
		return sessionFactory.getCurrentSession().get(User.class, id);
	}

	/*
	 * Method to add Billing Address.
	 * */
	public String addBillingAddress(BillingAddress billingAddress) {
		
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(billingAddress);
			return "true";
		} catch (Exception e) {
			e.printStackTrace();
			return "false";
		}
	}
	
	public String updateBillingAddress(BillingAddress billingAddress) {
		// TODO Auto-generated method stub
		return null;
	}

	public User getUserByUsername(String username) {
		
		return sessionFactory.getCurrentSession().createQuery("FROM User WHERE email = '"+username +"'", User.class).getSingleResult();
	}

	/*
	 * Method to get Billing Address.
	 * */
	public BillingAddress getBillingAddress(int userId) {
		
		return sessionFactory.getCurrentSession().createQuery("FROM BillingAddress WHERE cid ='"+userId+"'", BillingAddress.class).getSingleResult();
	}

	/*
	 * Method to add shipping address at time of Checkout
	 * */
	public void addShippingAddress(ShippingAddress shippingAddress) {
		sessionFactory.getCurrentSession().persist(shippingAddress);
		
	}
}
