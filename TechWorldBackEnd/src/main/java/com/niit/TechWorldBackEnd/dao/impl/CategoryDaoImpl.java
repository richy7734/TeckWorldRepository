package com.niit.TechWorldBackEnd.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.TechWorldBackEnd.dao.CategoryDao;
import com.niit.TechWorldBackEnd.model.Categories;

/*
 * Category DAO
 * */
@Transactional
@Repository("categoryDao")
public class CategoryDaoImpl implements CategoryDao {

	@Autowired
	SessionFactory sessionFactory;
	
	/*
	 * Method to get Category List.
	 * */
	@SuppressWarnings("unchecked")
	public List<Categories> getCategoryList() {
		
		return sessionFactory.getCurrentSession().createQuery("from Categories").list();
	}
	
	/*
	 * Method to Add Category.
	 * */
	public void addCategory(Categories categories){
		sessionFactory.getCurrentSession().saveOrUpdate(categories);
	}
	
	/*
	 * Method to Get Category By Id.
	 * */
	public Categories getCategoriesById(int id){
		
		return sessionFactory.getCurrentSession().get(Categories.class, id);
	}

}
