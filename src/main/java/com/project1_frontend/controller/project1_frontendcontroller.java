package com.project1_frontend.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project1_frontend.Dao.CategoryDao;
import com.project1_frontend.Dao.OrderDetailsDao;
import com.project1_frontend.Dao.UserDao;
import com.project1_frontend.model.User;
import com.project1_frontend.model.UserModel;


@Controller
public class project1_frontendcontroller {

	@Autowired
	private CategoryDao categoryDao;
	@Autowired
	private UserDao userDao;
	@Autowired
	private OrderDetailsDao orderDetailsDao;
	
	private static final Logger logger = LoggerFactory.getLogger(project1_frontendcontroller.class);

	@RequestMapping(value= {"/" , "/home" , "/index"})
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView("masterpage");
		mv.addObject("title", "Home");
		
		logger.info("Inside project1_frontendcontroller index method - INFO");
		logger.debug("Inside project1_frontendcontroller index method - DEBUG");
		
		// passing the list of categories
		mv.addObject("categories", categoryDao.list());
		
		mv.addObject("userClickHome", true);
		return mv;
	}

	@RequestMapping(value= "/contactus")
	public ModelAndView contact() {
		ModelAndView mv = new ModelAndView("masterpage");
		mv.addObject("title", "ContactUs");
		mv.addObject("userClickContactUs", true);
		return mv;
	}

	@RequestMapping(value= "/aboutus")
	public ModelAndView about() {
		ModelAndView mv = new ModelAndView("masterpage");
		mv.addObject("title", "AboutUs");
		mv.addObject("userClickAboutUs", true);
		return mv;
	}
	@RequestMapping(value= "/register")
	public ModelAndView register() {
		ModelAndView mv = new ModelAndView("SignUp-personal");
		mv.addObject("title", "SignUp");
		return mv;
	}
	


	@RequestMapping(value="/login")
	public ModelAndView login(@RequestParam(name="error", required = false)	String error,
			@RequestParam(name="logout", required = false) String logout) {
		ModelAndView mv= new ModelAndView("SignIn");
		mv.addObject("title", "SignIn");
		if(error!=null) {
			mv.addObject("message", "Username and Password is invalid!");
			System.out.println(error);
		}
		if(logout!=null) {
			mv.addObject("logout", "You have logged out successfully!");
		}
		System.out.println(error);
		return mv;
	}
	
	@RequestMapping(value="/access-denied")
	public ModelAndView accessDenied() {
		ModelAndView mv = new ModelAndView("error");		
		mv.addObject("errorTitle", "Aha! Caught You.");		
		mv.addObject("errorDescription", "You are not authorized to view this page!");		
		mv.addObject("title", "403 Access Denied");		
		return mv;
	}	

	@RequestMapping(value="/Order-Details")
	public ModelAndView OrderDetails(@AuthenticationPrincipal User user) {
	
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		ModelAndView mv = new ModelAndView("masterpage");				
		mv.addObject("title", "Order Details");
		mv.addObject("userClickOrderDetail", true);
		user = userDao.getByEmail(authentication.getName());
		
		System.out.println("user="+user.getId());
		if(orderDetailsDao.getAllOrdersByUserId(user.getId())!=null)
		mv.addObject("orderlist",orderDetailsDao.getAllOrdersByUserId(user.getId()));
		else
			System.out.println("error of null");
		return mv;
	}	
		
	

	}
