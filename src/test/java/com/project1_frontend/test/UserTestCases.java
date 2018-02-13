package com.project1_frontend.test;

import static org.junit.Assert.assertEquals;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import com.project1_frontend.Dao.UserDao;
import com.project1_frontend.model.Address;
import com.project1_frontend.model.Cart;
import com.project1_frontend.model.User;

public class UserTestCases{



		private static AnnotationConfigApplicationContext context;
		private static UserDao userDAO;
		private User user = null;
		private Cart cart = null;
		private Address address = null;
		
		@BeforeClass
		public static void init()
		{
			context = new AnnotationConfigApplicationContext();
			context.scan("com.project1_frontend");
			context.refresh();
			userDAO = (UserDao) context.getBean("userDAO");
		}
		
	
	/*	@Test
		public void testAddUser() {
			
			user = new User() ;
			user.setFirstName("Hrithik");
			user.setLastName("Roshan");
			user.setEmail("hr@gmail.com");
			user.setContactNumber("1234512345");
			user.setRole("CUSTOMER");
			user.setEnabled(true);
			user.setPassword("12345");
			
			
			address = new Address();
			address.setAddressLineOne("101/B Jadoo Society, Krissh Nagar");
			address.setAddressLineTwo("Near Kaabil Store");
			address.setCity("Mumbai");
			address.setState("Maharashtra");
			address.setCountry("India");
			address.setPostalCode("400001");
			address.setbilling(true);
			
			cart = new Cart();
			
			// linked the address with the user
			address.setUser(user);
			
			// linked the cart with the user
			cart.setUser(user);
			// link the user with the cart
			user.setCart(cart);
			
			// add the user
			assertEquals("Failed to add the user!", true, userDAO.addUser(user));	
			// add the address
			assertEquals("Failed to add the billing address!", true, userDAO.addAddress(address));
					
			// add the shipping address
			address = new Address();
			address.setAddressLineOne("201/B Jadoo Society, Kishan Kanhaiya Nagar");
			address.setAddressLineTwo("Near Kudrat Store");
			address.setCity("Mumbai");
			address.setState("Maharashtra");
			address.setCountry("India");
			address.setPostalCode("400001");
			address.setUser(user);
			assertEquals("Failed to add the shipping address!", true, userDAO.addAddress(address));
			
		}*/
		
		

		// working for uni-directional
		
	/*	@Test
		public void testAddAddress() {
			user = userDAO.getId(1);
			
			address = new Address();
			address.setAddressLineOne("301/B Jadoo Society, King Uncle Nagar");
			address.setAddressLineTwo("Near Store");
			address.setCity("Mumbai");
			address.setState("Maharashtra");
			address.setCountry("India");
			address.setPostalCode("400001");
					
			address.setUser(user);
			// add the address
			assertEquals("Failed to add the address!", true, userDAO.addAddress(address));	
		}*/
		
		@Test
		public void testgetByEmail()
		{
		
		assertEquals("some error",new User(),userDAO.getByEmail("ts@gmail.com") );
		}

		
		/*@Test
		public void testUpdateCart() {
			user = userDAO.getId(1);
			cart = user.getCart();
			cart.setGrandTotal(10000);
			cart.setCartLines(1);
			assertEquals("Failed to update the cart!", true, userDAO.updateCart(cart));			
		} 
	*/
		

		
	}


