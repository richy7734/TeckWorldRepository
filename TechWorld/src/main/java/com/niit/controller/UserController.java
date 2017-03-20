package com.niit.controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.TechWorldBackEnd.model.User;

@RequestMapping("/user")
@Controller
public class UserController {

	@Autowired
	User user;
	
	@Autowired
	private HttpServletRequest request;
	
	@RequestMapping("")


	/*
	 * Bind user entity with the image upload form.
	 */
	@ModelAttribute("user")
	public User getUser() {
		return user;
	}

	/*
	 * Handler for user image upload.
	 */
	@RequestMapping(value = "/profile/image", method = RequestMethod.POST)
	public String uploadUserImage(@ModelAttribute("user") User user, Model model) {

		if (!user.getProfileImage().isEmpty()) {
			try {
				/*
				 * Creating the directory in the server context to store.
				 */
				String imagePath = request.getServletContext().getRealPath("/resources/images/user");
				System.out.println("------- Context Path set -------");
				File dir = new File(imagePath + File.separator);
				System.out.println("------- Directory set to" + dir + "-------");
				if (!dir.exists())
					dir.mkdirs();
				String orgName = user.getfName();
				String filePath = imagePath + File.separator + orgName + ".jpg";
				File dest = new File(filePath);
				System.out.println("------- Image uploaded to " + dest + "-------");
				user.getProfileImage().transferTo(dest);

			} catch (Exception e) {
				System.out.println("You failed to upload " + user.getfName() + " => " + e.getMessage());
			}
		} else {
			System.out.println("Upload Failed");
		}

		return "master";
	}

}
