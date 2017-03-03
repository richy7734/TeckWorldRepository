package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

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
