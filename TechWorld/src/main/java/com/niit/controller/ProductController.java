package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.niit.TechWorldBackEnd.dao.ProductDao;
import com.niit.TechWorldBackEnd.model.Product;

@Controller
public class ProductController {

	@Autowired
	ProductDao productDao;
	
	@RequestMapping("/allProducts/data")
	public @ResponseBody List<Product> showAllPoducts(){
		return productDao.getProductList();
	}
	
}
