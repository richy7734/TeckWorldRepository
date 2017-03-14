package com.niit.controller;

import java.io.File;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import com.niit.TechWorldBackEnd.dao.CategoryDao;
import com.niit.TechWorldBackEnd.dao.ProductDao;
import com.niit.TechWorldBackEnd.model.Product;

@Controller
@RequestMapping("/adm")
public class AdminController {

	@Autowired
	ProductDao productDao;

	@Autowired
	CategoryDao categoryDao;

	@Autowired
	private HttpServletRequest request;

	/*
	 * Mapping for products page
	 */
	@RequestMapping("/admin")
	public String getAdmin(Model model) {
		model.addAttribute("category", categoryDao.getCategoryList());
		model.addAttribute("title", "admin");
		model.addAttribute("admin", true);
		return "master";
	}

	/*
	 * Constructor of Product mapped with the form.
	 */
	@ModelAttribute("addProductCommand")
	public Product getProdct() {
		return new Product();
	}

	/*
	 * Mapping for add product.
	 */
	@RequestMapping("/addProduct")
	public String addProducts(@ModelAttribute("addProductCommand") @Valid Product product, BindingResult result,
			Model model) {
		System.out.println("------- Add Product Controller Initiated -------");
		if (!result.hasErrors()) {
			System.out.println("------- Add Product Functionality Initiated -------");
			/*
			 * Image Upload functionality.
			 * */
			if (!product.getImage().isEmpty()) {
				try {
					/*
					 * Creating the directory in the server context to store.
					 */
					String imagePath = request.getServletContext().getRealPath("/resources/images/products");
					System.out.println("------- Context Path set -------");
					File dir = new File(imagePath + File.separator);
					System.out.println("------- Directory set to" + dir + "-------");
					if (!dir.exists())
						dir.mkdirs();
					String orgName = product.getpName();
					String filePath = imagePath + File.separator + orgName + ".jpg";
					File dest = new File(filePath);
					System.out.println("------- Image uploaded to " + dest + "-------");
					product.getImage().transferTo(dest);

				} catch (Exception e) {
					System.out.println("You failed to upload " + product.getpName() + " => " + e.getMessage());
				}
			} else {
				System.out.println("Upload Failed");
			}

			productDao.addProduct(product);
			System.out.println("-------Product Saved-------");
			model.addAttribute("product", productDao.getProductList());
			model.addAttribute("category", categoryDao.getCategoryList());
			model.addAttribute("message", "Product added successfully.");
			model.addAttribute("admin", true);
			model.addAttribute("title", "admin");
			return "master";
		} else

		{
			System.out.println("-------Product Save Failed-------");
			model.addAttribute("product", productDao.getProductList());
			model.addAttribute("category", categoryDao.getCategoryList());
			model.addAttribute("message", "Product was not added. Validation failed..!!!!");
			model.addAttribute("title", "admin");
			model.addAttribute("admin", true);
			return "master";
		}
	}

	/*
	 * Handler mapping for Update view.
	 */
	@RequestMapping("update/product/{pId}")
	public String getProUpdate(@PathVariable("pId") int id, Model model) {
		model.addAttribute("pro", productDao.getProductById(id));
		model.addAttribute("category", categoryDao.getCategoryList());
		model.addAttribute("title", "admin");
		model.addAttribute("admin", true);
		return "master";
	}

	/*
	 * Constructor of Product mapped with the form.
	 */
	@ModelAttribute("updateProductCommand")
	public Product getUpdateProdct() {
		return new Product();
	}

	/*
	 * Mapping for Update product.
	 */
	@RequestMapping("/updateProduct")
	public String updateProducts(@ModelAttribute("updateProductCommand") @Valid Product product, BindingResult result,
			Model model) {

		System.out.println(product);
		System.out.println("------- Update Product Controller Initiated -------");

		if (!result.hasErrors()) {
			System.out.println("------- Update Product Functionality Initiated -------");

			/*
			 * Image Upload functionality.
			 * */
			if (!product.getImage().isEmpty()) {
				try {
					/*
					 * Creating the directory in the server context to store.
					 */
					String imagePath = request.getServletContext().getRealPath("/resources/images/products");
					System.out.println("------- Context Path set -------");
					File dir = new File(imagePath + File.separator);
					System.out.println("------- Directory set to" + dir + "-------");
					if (!dir.exists())
						dir.mkdirs();
					String orgName = product.getpName();
					String filePath = imagePath + File.separator + orgName + ".jpg";
					File dest = new File(filePath);
					System.out.println("------- Image uploaded to " + dest + "-------");
					product.getImage().transferTo(dest);

				} catch (Exception e) {
					System.out.println("You failed to upload " + product.getpName() + " => " + e.getMessage());
				}
			} else {
				System.out.println("------- Upload Failed -------");
				model.addAttribute("product", productDao.getProductList());
				model.addAttribute("category", categoryDao.getCategoryList());
				model.addAttribute("title", "admin");
				model.addAttribute("admin", true);
				return "master";
			}

			productDao.updateProduct(product);
			System.out.println("-------Product Updated-------");
			model.addAttribute("product", productDao.getProductList());
			model.addAttribute("category", categoryDao.getCategoryList());
			model.addAttribute("admin", true);
			model.addAttribute("title", "admin");
			return "master";
		} else {
			System.out.println("-------Product Update Failed-------");
			model.addAttribute("product", productDao.getProductList());
			model.addAttribute("category", categoryDao.getCategoryList());
			model.addAttribute("title", "admin");
			model.addAttribute("admin", true);
			return "master";
		}
	}

}
