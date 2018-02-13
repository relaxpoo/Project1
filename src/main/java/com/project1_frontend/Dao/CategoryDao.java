package com.project1_frontend.Dao;

import java.util.List;

import com.project1_frontend.model.Category;

public interface CategoryDao {
	
	Category get(int id);
	List<Category> list();
	boolean add(Category category);
	boolean update(Category category);
	boolean delete(Category category);
}
