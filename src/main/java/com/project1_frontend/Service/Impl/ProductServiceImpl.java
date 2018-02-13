package com.project1_frontend.Service.Impl;

import java.util.List;
import com.project1_frontend.Dao.ProductDao;
import com.project1_frontend.Service.ProductServices;
import com.project1_frontend.model.Product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("productServices")
public class ProductServiceImpl implements ProductServices {
	
@Autowired
private ProductDao productDao;

	@Override
	public Product get(int productId) {
		
		return productDao.get(productId);
	}

	@Override
	public List<Product> list() {
		
		return productDao.list();
	}

	@Override
	public boolean add(Product product) {
		
		return productDao.add(product);
	}

	@Override
	public boolean update(Product product) {
	
		return productDao.update(product);
	}

	@Override
	public boolean delete(Product product) {
		
		return productDao.delete(product);
	}

	@Override
	public List<Product> listActiveProducts() {
		
		return productDao.listActiveProducts();
	}

	@Override
	public List<Product> listActiveProductsByCategory(int categoryId) {
		
		return productDao.listActiveProductsByCategory(categoryId);
	}

	@Override
	public List<Product> getLatestActiveProducts(int count) {
		
		return productDao.getLatestActiveProducts(count);
	}
	
		
	}
	


