package com.niit.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.niit.TechWorldBackEnd.dao.CartDao;
import com.niit.TechWorldBackEnd.dao.ProductDao;
import com.niit.TechWorldBackEnd.dao.UserDao;
import com.niit.TechWorldBackEnd.model.Cart;
import com.niit.TechWorldBackEnd.model.CartItem;
import com.niit.TechWorldBackEnd.model.Product;
import com.niit.TechWorldBackEnd.model.User;


@Controller
@RequestMapping("/user")
public class CartController {

	@Autowired
	UserDao userDao;

	@Autowired
	ProductDao productDao;

	@Autowired
	CartDao cartDao;

	@Autowired
	User user;

	@Autowired
	Cart cart;

	@RequestMapping("/addToCart/{pid}")
	public String addToCart(@PathVariable("pid") int pid,
			/* @PathVariable(value ="qty",required = false) int quantity, */ Principal principal, Model model) {

		System.out.println("------- Add to cart controller reached -------");

		
		
		user = userDao.getUserByUsername(principal.getName());
		System.out.println("------- User data fetched :" + user.getfName());

		cart = cartDao.getCart(user.getId());
		System.out.println("------- Cart fetched for User : " + cart.getUserId() + " -------");

		Product product = productDao.getProductById(pid);
		System.out.println("------- Product fetched : " + product.getpName());
		CartItem cartItem = new CartItem();
		try {
			cartItem = cartDao.getCartItem(product.getpId(), cart.getId());

		} catch (Exception e) {
			e.printStackTrace();
			cartItem = cartDao.addCartItem(cartItem);
		}

		System.out.println("------- New Cart item created with count : " + cartItem.getQuantity() + " -------");
		if (cartItem.getQuantity() != 0) {
			if (cartItem.getProductId() == product.getpId()) {
				cartItem = cartDao.getCartItem(product.getpId(), cart.getId());
				cart.setGrandTotal(cart.getGrandTotal()-cartItem.getTotalPrice());
				System.out.println("------- Cart item fetched for product : " + product.getpName() + "--------");
				cartItem.setQuantity(cartItem.getQuantity() + 1);
				cartItem.setTotalPrice(product.getCost() * cartItem.getQuantity());
				System.out.println("-------- Cart item count updated to : " + cartItem.getQuantity() + " --------");

				cartDao.updateCartItem(cartItem);
				System.out.println("-------- Cart Item Updated --------");
			}
		} else {
			System.out.println("-------- New cart item initiated --------");
			cartItem.setProductId(pid);
			cartItem.setQuantity(cartItem.getQuantity() + 1);
			cartItem.setTotalPrice(product.getCost() * cartItem.getQuantity());
			cartItem.setCartId(cart.getId());
			System.out.println("------- Cart Item created --------");

			cartDao.updateCartItem(cartItem);
			System.out.println("------- Product added to Cart Item -------");

			cart.setCartItemsCount(cart.getCartItemsCount() + 1);
		}

		cart.setGrandTotal(cartItem.getTotalPrice() + cart.getGrandTotal());
		System.out.println("------- Cart created --------");

		cartDao.saveCart(cart);
		System.out.println("------- Cart Pushed to Data Base --------");

		return "redirect:/user/showCart";
	}

	@RequestMapping("/showCart")
	public String showCart(Model model) {
		cart = cartDao.getCart(user.getId());
		List<CartItem> cartItems = new ArrayList<>();
		cartItems = cartDao.getCartItemList();
		List<CartItem> cartIter = new ArrayList<>();
		for (CartItem car : cartItems) {
			car.setProduct(productDao.getProductById(car.getProductId()));
			cartIter.add(car);
		}
		for (CartItem car : cartIter) {
			System.out.println("Cart List : Name - " + car.getProduct().getpName());
		}
		model.addAttribute("cartDetails", cart);
		model.addAttribute("cart", cartIter);
		return "cart";
	}

	@RequestMapping("/delete/cartItem/{pid}")
	public String deleteCart(@PathVariable("pid") int pid, Model model) {
		cart = cartDao.getCart(user.getId());
		
		
		CartItem cartItem = cartDao.getCartItem(pid, cart.getId());

		cart.setCartItemsCount(cart.getCartItemsCount() - 1);
		cart.setGrandTotal(cart.getGrandTotal() - cartItem.getTotalPrice());
		cartDao.saveCart(cart);
		cartDao.deleteCartItem(cartItem);

		return "redirect:/user/showCart";
	}
	
	@RequestMapping("/checkoutData")
	public String getCheckout(Principal principal){
		user = userDao.getUserByUsername(principal.getName());
		
		return "redirect:/checkout?userId="+user.getId();
	}
}
