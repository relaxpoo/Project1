package com.project1_frontend.Dao;

	import java.util.List;

import com.project1_frontend.model.Address;
import com.project1_frontend.model.User;

	public interface UserDao {

		// user related operation
		 User getByEmail(String email);
		User getId(int id);

		boolean addUser(User user);
		
		// adding and updating a new address
		Address getAddress(int addressId);
		boolean addAddress(Address address);
		boolean updateAddress(Address address);
		Address getBillingAddress(int user);
		List<Address> listShippingAddresses(int user);	
	}



