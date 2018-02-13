package com.project1_frontend.Service;

import java.util.List;

import com.project1_frontend.model.Category;

public interface CategoryService {
	List<Category> list();

	Category get(int id);
	
	boolean add(Category category);

}
