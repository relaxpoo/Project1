package com.project1_frontend.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project1_frontend.Dao.ProductDao;
import com.project1_frontend.model.Product;


	@Controller
	@RequestMapping("/json/data")
	public class JsonDataController {

		@Autowired
		private ProductDao productDao;
		

		@RequestMapping("/admin/all/products")
		@ResponseBody
		public List<Product> getAllProductsList() {		
			return productDao.list();
					
		}	
		
		@RequestMapping("/all/products")
		@ResponseBody
		public List<Product> getAllProducts() {
			
			return productDao.listActiveProducts();
					
		}
		
		@RequestMapping("/category/{id}/products")
		@ResponseBody
		public List<Product> getProductsByCategory(@PathVariable int id) {
			
			return productDao.listActiveProductsByCategory(id);
					
		}
		
		@RequestMapping("/mv/products")
		@ResponseBody
		public List<Product> getMostViewedProducts() {		
			return productDao.getProductsByParam("views", 5);				
		}
			
		@RequestMapping("/mp/products")
		@ResponseBody
		public List<Product> getMostPurchasedProducts() {		
			return productDao.getProductsByParam("purchases", 5);				
		}
		
				
	}


