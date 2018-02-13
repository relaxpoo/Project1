package com.project1_frontend.Dao;

import java.util.List;

import com.project1_frontend.model.OrderDetail;

public interface OrderDetailsDao {
	
	public List<OrderDetail> getAllOrdersByUserId(int userId);
}
