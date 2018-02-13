package com.project1_frontend.Service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project1_frontend.Dao.CategoryDao;
import com.project1_frontend.Service.CategoryService;
import com.project1_frontend.model.Category;

@Service("categoryService")
public class CategoryServiceImpl implements CategoryService {
	
@Autowired
private CategoryDao categoryDao;

	@Override
	public List<Category> list() {
		
		return categoryDao.list();
	}

	@Override
	public Category get(int id) {
		
		return categoryDao.get(id);
	}

	@Override
	public boolean add(Category category) {
	
		return categoryDao.add(category);
	}

}
