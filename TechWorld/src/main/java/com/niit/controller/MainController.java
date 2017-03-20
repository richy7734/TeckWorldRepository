package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.TechWorldBackEnd.dao.ProductDao;

@Controller
@RequestMapping
public class MainController {
	
	@Autowired
	ProductDao productDao;

	
	/*
	 * Default or master page handler mapping
	 */
	@RequestMapping({ "/", "/home" })
	public ModelAndView getDefault() {
		ModelAndView mv = new ModelAndView("master");
		mv.addObject("thumb", productDao.getProductListFixed());
		mv.addObject("title", "Home");
		mv.addObject("home", true);
		return mv;
	}

	@GetMapping("/login")
	public String login(@RequestParam(value = "error", required = false) String error, Model model) {
		if (error != null) {
			model.addAttribute("error", "Authentication Failed - Invalid credentials!");
		}
		model.addAttribute("title", "Login");
		return "login";
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
		mv.addObject("aboutUs", true);
		return mv;
	}

}
