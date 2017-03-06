package com.niit.TechWorldBackEnd;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.TechWorldBackEnd.dao.ProductDao;
import com.niit.TechWorldBackEnd.model.Product;

public class ProductTest {

	/*
	 * Get the application context
	 */
	private static AnnotationConfigApplicationContext context;
	private static ProductDao productDao;
	private Product product;

	/*
	 * Initialize the classes
	 */
	@BeforeClass
	public static void init() {

		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.TechWorldBackEnd");
		context.refresh();
		productDao = (ProductDao) context.getBean("productDao");
	}

	/*
	 * Test Case for adding a product.
	 */
	/*
	@Test
	public void addProductTest() {
		product = new Product();

		product.setBrand("HP");
		product.setpName("HP Pavillion x360");
		product.setCost(37000);
		product.setCategory("Convertible Laptops");
		product.setActive(true);
		product.setDescription("This is a laptop");
		product.setImgUrl("hpx360");

		assertEquals("Product Successfully added to the database", true, productDao.addProduct(product));

	}*/
	

	/*
	 * Test Case for Getting product by id.
	 */
	
	@Test
	public void productByIdTest() {
		product = new Product();
		product = productDao.getProductById(2);
		assertEquals("Product Successfully retrived by id","HP Pavillion x360",product.getpName());
	}
	
	
	/*
	 * Test Case for updating a product.
	 * */
	/*
	@Test
	public void updateProductTest() {
		product = new Product();
		product = productDao.getProductById(2);
		product.setCategory("Laptops");
		
		assertEquals("Product Successfully updated in the database", true, productDao.updateProduct(product));
	}
	*/
	
	/*
	 * Test Case for deleting a product.
	 * */
/*
	@Test
	public void deleteProductTest() {
		product = new Product();
		product = productDao.getProductById(2);
		product.setActive(false);
		
		assertEquals("Product Successfully deleted from the database", true, productDao.updateProduct(product));
	}
*/

	

}
