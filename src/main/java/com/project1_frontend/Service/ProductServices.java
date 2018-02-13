package com.project1_frontend.Service;

import java.util.List;

import com.project1_frontend.model.Product;

public interface ProductServices {
	
	Product get(int productId);
	List<Product> list();
	boolean add(Product product);
	boolean update(Product product);
	boolean delete(Product product);

	//business methods 
	List<Product> listActiveProducts();
	List<Product> listActiveProductsByCategory(int categoryId);
	List<Product> getLatestActiveProducts(int count);

	}


