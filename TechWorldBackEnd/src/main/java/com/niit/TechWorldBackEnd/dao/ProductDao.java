package com.niit.TechWorldBackEnd.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.niit.TechWorldBackEnd.model.Product;

@Component
public interface ProductDao {

	public List<Integer> getIdList();
	public List<Product> getProductList();
	public List<Product> getProductListFixed();
	public Product getProductById(int id);
	public boolean addProduct(Product product);
	public boolean updateProduct(Product product);
}
