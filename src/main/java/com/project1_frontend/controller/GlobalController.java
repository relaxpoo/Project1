package com.project1_frontend.controller;
	

	import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.project1_frontend.Dao.UserDao;
import com.project1_frontend.model.User;
import com.project1_frontend.model.UserModel;

	@ControllerAdvice
	public class GlobalController {
		
		@Autowired
		private UserDao userDAO;
		
		@Autowired
		private HttpSession session;
		
		private UserModel userModel = null;
		private User user = null;	
		
		
		@ModelAttribute("userModel")
		public UserModel getUserModel() {		
			if(session.getAttribute("userModel")==null) {
				// get the authentication object
				Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
				System.out.println("global user model");
				
				if(!authentication.getPrincipal().equals("anonymousUser")){
					// get the user from the database
					user = userDAO.getByEmail(authentication.getName());
					System.out.println("email="+authentication.getName());
					if(user!=null) {
						// create a new model
						userModel = new UserModel();
						// set the name and the id
						userModel.setId(user.getId());
						userModel.setFullName(user.getFirstName() + " " + user.getLastName());
						userModel.setRole(user.getRole());
						
						if(user.getRole().equals("USER")) {
							userModel.setCart(user.getCart());					
						}				
		
						session.setAttribute("userModel", userModel);
						
						return userModel;
					}			
				}
			}
		
			return (UserModel) session.getAttribute("userModel");		
		}
		
	}



