package com.project1_frontend.Dao.Impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.project1_frontend.Dao.OrderDetailsDao;
import com.project1_frontend.model.OrderDetail;

@Repository("orderDetailsDao")
@Transactional
public class OrderDetailDaoImpl implements OrderDetailsDao {

	
	@Autowired
	private SessionFactory sessionfactory;
	
	@Override
	public List<OrderDetail> getAllOrdersByUserId(int userId) {
		 
			String selectActiveOrders = "FROM OrderDetail WHERE user_Id = :userId";
			return sessionfactory.getCurrentSession().createQuery(selectActiveOrders,OrderDetail.class)
					.setParameter("userId", userId).getResultList();
		
		}
		
		/*return sessionfactory.getCurrentSession().createQuery("from order_detail where USER_ID = :Id").getResultList();*/
	

}
