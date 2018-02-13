package com.project1_frontend.test;

	import static org.junit.Assert.assertEquals;

	import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

	import com.project1_frontend.Dao.CartLineDAO;
	import com.project1_frontend.Dao.ProductDao;
	import com.project1_frontend.Dao.UserDao;
	import com.project1_frontend.model.Cart;
	import com.project1_frontend.model.CartLine;
	import com.project1_frontend.model.Product;
	import com.project1_frontend.model.User;


public class CartLineTestCases {
	
	
		private static AnnotationConfigApplicationContext context;
		
		
		private static CartLineDAO cartLineDAO= null;
		private static UserDao userDao=null;
		private static ProductDao productDao=null;
		
		private User user =null;
		private Cart cart = null;
		private Product product = null;
		private CartLine cartLine = null;
		
		
		@BeforeClass
		public static void init() {
			context = new AnnotationConfigApplicationContext();
			context.scan("com.project1_frontend");
			context.refresh();
			cartLineDAO = (CartLineDAO)context.getBean("cartLineDAO");
			productDao=(ProductDao)context.getBean("productDao");
			userDao = (UserDao)context.getBean("userDao");
		}
		
		@Test
		public void testAddNewCartLine(){
			user = userDao.getByEmail("abc@gmail.com");
			cart=user.getCart();
			product=productDao.get(1);
			cartLine= new CartLine();
			cartLine.setBuyingPrice(product.getUnitPrice());
			cartLine.setProductCount(cartLine.getProductCount() + 1);
			cartLine.setTotal(cartLine.getProductCount()*product.getUnitPrice());
			cartLine.setAvailable(true);
			cartLine.setCartId(cart.getId());
			cartLine.setProduct(product);

			assertEquals("Failed to add the cartLine", true,cartLineDAO.add(cartLine));
			

			//update the cart
			cart.setGrandTotal(cart.getGrandTotal() + cartLine.getTotal());
			cart.setCartLines(cart.getCartLines() + 1);
			assertEquals("Failed to update the cart", true, cartLineDAO.updateCart(cart));


			}
	
		
	}



