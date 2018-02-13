package com.project1_frontend.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.project1_frontend.Dao.CategoryDao;
import com.project1_frontend.Exception.ProductNotFoundException;
import com.project1_frontend.Service.ProductServices;
import com.project1_frontend.Utility.FileUploadUtility;
import com.project1_frontend.model.Category;
import com.project1_frontend.model.Product;
import com.project1_frontend.validator.ProductValidator;


@Controller
@RequestMapping("/manage")
public class ProductManagementController {

	private static final Logger logger = LoggerFactory.getLogger(ProductManagementController.class);

	@Autowired
	private ProductServices productServices;
	
	@Autowired
	private CategoryDao categoryDao;		

	@RequestMapping("/product")
	public ModelAndView manageProduct(@RequestParam(name="success",required=false)String success) {		

		ModelAndView mv = new ModelAndView("masterpage");	
		mv.addObject("title","Product Management");		
		mv.addObject("userClickManageProduct",true);
		
		Product nProduct = new Product();
		
		// assuming that the user is ADMIN
		// later we will fixed it based on user is SUPPLIER or ADMIN
		nProduct.setSupplierId(1);
		nProduct.setActive(true);

		mv.addObject("product", nProduct);
		mv.addObject("category",new Category());
		
		if(success != null) {
			if(success.equals("product")){
				mv.addObject("message", "Product submitted successfully!");
			}	
			
		}
			
		return mv;
		
	}
	
	@RequestMapping(value = "/product", method=RequestMethod.POST)
	public String managePostProduct(@Valid @ModelAttribute("product") Product mProduct, 
			BindingResult results, Model model, HttpServletRequest request) {
		
		// mandatory file upload check
		if(mProduct.getId() == 0) {
			new ProductValidator().validate(mProduct, results);
		}
		else {
			// edit check only when the file has been selected
			if(!mProduct.getFile().getOriginalFilename().equals("")) {
				new ProductValidator().validate(mProduct, results);
			}			
		}
		
		if(results.hasErrors()) {
			model.addAttribute("message", "Validation fails for adding the product!");
			model.addAttribute("userClickManageProduct",true);
			return "masterpage";
		}			

		
		logger.info(mProduct.toString());
		// add a new product
		productServices.add(mProduct);

		// upload the file
		if (!mProduct.getFile().getOriginalFilename().equals("")) {
			FileUploadUtility.uploadFile(request, mProduct.getFile(), mProduct.getCode());
		}

		return "redirect:/manage/product?operation=product";
	}


	@RequestMapping(value = "/product/{id}/activation", method=RequestMethod.GET)
	@ResponseBody
	public String managePostProductActivation(@PathVariable int id) {		
		Product product = productServices.get(id);
		boolean isActive = product.isActive();
		product.setActive(!isActive);
		productServices.update(product);		
		return (isActive)? "Product Dectivated Successfully!": "Product Activated Successfully";
		
	}
	
	@RequestMapping(value="/{id}/product")
public ModelAndView EditSingleProduct(@PathVariable int id) throws ProductNotFoundException{
		
		ModelAndView mv = new ModelAndView("masterpage");
		
		Product product = productServices.get(id);
		
		if(product == null) throw new ProductNotFoundException();
		
		// update the view count
		//---------------------------
		
		mv.addObject("title", product.getName()+" Edit");
		mv.addObject("product", product);
		
		mv.addObject("userClickEditProduct", true);
		
		
		
		return mv;
		
	}
	
	@RequestMapping(value="/{id}/delete")
	public ModelAndView DeleteSingleProduct(@PathVariable int id) throws ProductNotFoundException{
			
			ModelAndView mv = new ModelAndView("masterpage");
			
			Product product = productServices.get(id);
			
			if(product == null) throw new ProductNotFoundException();
			
			mv.addObject("title", "Product Management");
			mv.addObject("product", product);
			
			mv.addObject("userClickDeleteProduct", true);
			productServices.delete(product);
			
			return mv;
			
		}
	@RequestMapping(value = "/category", method=RequestMethod.POST)
	public String managePostCategory(@ModelAttribute("category") Category mCategory, HttpServletRequest request) {					
		categoryDao.add(mCategory);		
		return "redirect:" + request.getHeader("Referer") + "?success=category";
	}
			
	@ModelAttribute("categories") 
	public List<Category> modelCategories() {
		return categoryDao.list();
	}
	
	@ModelAttribute("category")
	public Category modelCategory() {
		return new Category();
	}

		
}


