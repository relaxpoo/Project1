package com.project1_frontend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project1_frontend.Dao.CategoryDao;
import com.project1_frontend.Dao.ProductDao;
import com.project1_frontend.Exception.ProductNotFoundException;
import com.project1_frontend.Service.ProductServices;
import com.project1_frontend.model.Category;
import com.project1_frontend.model.Product;


@Controller
public class ProductController {
	
	
	@Autowired
	private CategoryDao categoryDao;
	@Autowired
	ProductServices productservices;
	@Autowired
	ProductDao productDao;
	
	//Method to display all products and products based on categories
	
	@RequestMapping(value= "/show/all/Products")
	public ModelAndView showAllProducts() {
		ModelAndView mv = new ModelAndView("masterpage");
		mv.addObject("title", "All Products");
		mv.addObject("categories", categoryDao.list());
		mv.addObject("Product", productservices.list());
		mv.addObject("userClickAllProducts", true);
		return mv;
	}
	
	@RequestMapping(value= "/show/category/{id}/products")
	public ModelAndView showCategoryProducts(@PathVariable ("id") int id) 
	{
		ModelAndView mv = new ModelAndView("masterpage");
		
		//To fetch a Single Category through CategoryDAO
		Category category;
		category = categoryDao.get(id);
		
		mv.addObject("title", category.getCategoryname());
		mv.addObject("categories", categoryDao.list());
		
		mv.addObject("category" , category);
		
		mv.addObject("userClickCategoryProducts", true);
		return mv;
	}
	
	
	/*
	 * Viewing a single product
	 * */
	
	@RequestMapping(value = "/show/{id}/product") 
	public ModelAndView showSingleProduct(@PathVariable int id) throws ProductNotFoundException{
		
		ModelAndView mv = new ModelAndView("masterpage");
		
		Product product = productservices.get(id);
		
		if(product == null) throw new ProductNotFoundException();
		
		// update the view count
		product.setViews(product.getViews() + 1);
		productservices.update(product);
		//---------------------------
		
		mv.addObject("title", product.getName());
		mv.addObject("product", product);
		
		mv.addObject("userClickShowProduct", true);
		
		
		return mv;
		
	}
	
}
	

