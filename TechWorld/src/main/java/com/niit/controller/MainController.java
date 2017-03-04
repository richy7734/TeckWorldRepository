package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.TechWorldBackEnd.dao.ProductDao;
import com.niit.TechWorldBackEnd.model.Product;

@Controller
public class MainController {
	
	@Autowired
	ProductDao productDao;

	/*
	 * Default or master page handler mapping
	 */
	@RequestMapping({ "/", "/home" })
	public ModelAndView getDefault() {
		ModelAndView mv = new ModelAndView("master");
		mv.addObject("title", "Home");
		mv.addObject("home", true);
		return mv;
	}

	/*
	 * Mapping for products page
	 */
	@RequestMapping("/products")
	public ModelAndView getHome() {

		ModelAndView mv = new ModelAndView("master");
		mv.addObject("title", "Products");
		mv.addObject("products", true);
		return mv;
	}

	/*
	 * Mapping for products page
	 */
	@RequestMapping("/admin")
	public ModelAndView getAdmin() {

		ModelAndView mv = new ModelAndView("master");
		mv.addObject("title", "admin");
		mv.addObject("admin", true);

		return mv;
	}

	/*
	 * Mapping for About Us page
	 */
	@RequestMapping("/aboutUs")
	public ModelAndView getAboutUs() {

		ModelAndView mv = new ModelAndView("master");
		mv.addObject("title", "About Us");
		mv.addObject("products", true);
		return mv;
	}

	@ModelAttribute("addProductCommand")
	public Product getProdct() {
		return new Product();
	}

	@RequestMapping("/addProduct")
	public ModelAndView addProducts(@ModelAttribute("addProductCommand") Product product, BindingResult result) {

		productDao.addProduct(product);

		ModelAndView mv = new ModelAndView("master");
		mv.addObject("title", "Home");

		return mv;
	}

}
