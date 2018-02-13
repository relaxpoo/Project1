package com.project1_frontend.Dao.Impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.project1_frontend.Dao.UserDao;
import com.project1_frontend.model.Address;
import com.project1_frontend.model.User;

@Repository("userDao")
@Transactional
public class UserDaoImpl implements UserDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public User getByEmail(String email) {
		String selectQuery = "FROM User WHERE email = :email";
		try {
			User user= sessionFactory
					.getCurrentSession()
					.createQuery(selectQuery,User.class)
						.setParameter("email",email)
							.getSingleResult();
			System.out.println(user.getEmail());
			return user;
		}
		catch(Exception ex) {
			System.out.println("\n\n\nhere in null value for userdaoimpl\n\n\n\n"+ex);
			return null;
		}
							
	}

	@Override
	public boolean addUser(User user) {
		try {			
			sessionFactory.getCurrentSession().persist(user);			
			return true;
		}
		catch(Exception ex) {
			return false;
		}
	}

	@Override
	public boolean addAddress(Address address) {
		try {			
			// will look for this code later and why we need to change it
			sessionFactory.getCurrentSession().persist(address);			
			return true;
		}
		catch(Exception ex) {
			return false;
		}
	}
	
	@Override
	public boolean updateAddress(Address address) {
		try {			
			sessionFactory.getCurrentSession().update(address);			
			return true;
		}
		catch(Exception ex) {
			return false;
		}
	}	
	

	
	@Override
	public List<Address> listShippingAddresses(int user) {
		String selectQuery = "FROM Address WHERE user_id = :user AND shipping = :shipping ORDER BY id DESC";
		return sessionFactory
				.getCurrentSession()
					.createQuery(selectQuery, Address.class)
						.setParameter("user", user)
						.setParameter("shipping", true)
							.getResultList();
		
	}

	@Override
	public Address getBillingAddress(int user) {
		String selectQuery = "FROM Address WHERE user_id = :user AND billing = :billing";
		try{
		return sessionFactory
				.getCurrentSession()
					.createQuery(selectQuery,Address.class)
						.setParameter("user", user)
						.setParameter("billing", true).getSingleResult();
						
						
		}
		catch(Exception ex) {
			return null;
		}
	}

	@Override
	public User getId(int id) {
		try {			
			return (User) sessionFactory.getCurrentSession().get(User.class, id);			
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
			return null;
		}
	}

	@Override
	public Address getAddress(int addressId) {
		try {			
			return (Address) sessionFactory.getCurrentSession().get(Address.class, addressId);			
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
			return null;
		}
	}

	}


