package com.niit.TechWorldBackEnd.dao.impl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.TechWorldBackEnd.dao.UserDao;
import com.niit.TechWorldBackEnd.model.BillingAddress;
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

	public User getUserById(int id) {
		// TODO Auto-generated method stub
		return null;
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

}
