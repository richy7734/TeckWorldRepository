package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.TechWorldBackEnd.dao.ProductDao;

@Controller
@RequestMapping
public class MainController {
	
	@Autowired
	ProductDao productDao;

	

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
	@RequestMapping("/product/{pId}")
	public ModelAndView getProduct(@PathVariable("pId")int id) {
		ModelAndView mv = new ModelAndView("master");
		mv.addObject("product", productDao.getProductById(id));
		mv.addObject("title", "Product Details");
		mv.addObject("productDetails", true);
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

}
