package com.niit.TechWorldBackEnd.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.TechWorldBackEnd.dao.CartDao;
import com.niit.TechWorldBackEnd.model.Cart;
import com.niit.TechWorldBackEnd.model.CartItem;
import com.niit.TechWorldBackEnd.model.Product;
import com.niit.TechWorldBackEnd.model.User;

@Repository("cartDaoImpl")
@Transactional
public class CartDaoImpl implements CartDao{

	@Autowired
	SessionFactory sessionFactory;
	
	/*
	 * Add Product to cartItem.
	 * */
	public CartItem addCartItem(CartItem cartItem){
		sessionFactory.getCurrentSession().persist(cartItem);
		return cartItem;
	}

	/*
	 * Gets list of cart items to show items.
	 * */
	@SuppressWarnings("unchecked")
	public List<CartItem> getCartItemList() {
		return sessionFactory.getCurrentSession().createQuery("FROM CartItem").list();
	}

	/*
	 * Creates an empty cart for new user.
	 * */
	public void createCart(int userId) {
		
		Cart cart = new Cart();
		cart.setUserId(userId);;
		sessionFactory.getCurrentSession().save(cart);
	}

	public CartItem getCartItem(int productId,int cartId) {
		
		return sessionFactory.getCurrentSession().createQuery("FROM CartItem WHERE CartId = '"+cartId+"' AND ProductId = '"+productId+"'",CartItem.class).getSingleResult();
	}

	/*
	 * Method to get Cart
	 * */
	public Cart getCart(int userId) {
		
		return sessionFactory.getCurrentSession().createQuery("FROM Cart WHERE userId='"+userId+"'",Cart.class).getSingleResult();
	}

	/*
	 * Method to save Cart.
	 * */
	public void saveCart(Cart cart) {
		
		sessionFactory.getCurrentSession().saveOrUpdate(cart);
		
	}

	/*
	 * Method to update Cart Item.
	 * */
	public void updateCartItem(CartItem cartItem) {
		sessionFactory.getCurrentSession().update(cartItem);
		
	}

	/*
	 * Method to delete a cart item.
	 * */
	public void deleteCartItem(CartItem cartItem) {
		sessionFactory.getCurrentSession().delete(cartItem);
		
	}
	
	/*
	 * Delete all cart items of a user.
	 * */
	public void deleteAllCartItems(int cartId){
		sessionFactory.getCurrentSession().createQuery("DELETE FROM CartItem WHERE cartId='"+cartId+"'").executeUpdate();
	}

	@Override
	public CartItem getSingleCartItem() {
		return sessionFactory.getCurrentSession().get(CartItem.class, 1);
	}

}
