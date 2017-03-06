package com.niit.TechWorldBackEnd.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.TechWorldBackEnd.dao.ProductDao;
import com.niit.TechWorldBackEnd.model.Product;

@Transactional
@Repository("productDao")
public class ProductDaoImpl implements ProductDao {

	@Autowired
	SessionFactory sessionFactory;

	/*
	 * Method for List all products.
	 * */
	@SuppressWarnings("unchecked")
	public List<Product> getProductList() {

		return sessionFactory.getCurrentSession().createQuery("from Product where active = TRUE").list();
	}
	
	/*
	 * Method to product by ID
	 * */
	public Product getProductById(int id) {

		Product product = sessionFactory.getCurrentSession().get(Product.class, Integer.valueOf(id));
		return product;

	}

	/*
	 * Method to add product in the table.
	 * */
	public boolean addProduct(Product product) {
		try {
			sessionFactory.getCurrentSession().persist(product);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	/*
	 * Method to update Product.
	 * */
	public boolean updateProduct(Product product) {
		try {
			
			sessionFactory.getCurrentSession().update(product);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<Integer> getIdList(){
		
		return sessionFactory.getCurrentSession().createQuery("select pId from Product").list();
	}

}
