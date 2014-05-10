package ca.digitaltango.prodobs.rest.controller;

import java.util.Map;

import lombok.extern.slf4j.Slf4j;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ca.digitaltango.prodobs.graph.model.Product;
import ca.digitaltango.prodobs.graph.repository.ProductService;

@Slf4j
@Controller
public class ProductController {

	
	public ProductController(){
		log.debug("**** CREATING THE PRODUCT CONTROLLER!");
	}
	
	@Autowired
	private ProductService productService;

	@RequestMapping("/product")
	public String getProduct(Map<String, Object> map) {
		map.put("product", new Product());
		map.put("productList", productService.findAll().iterator());
		log.debug("*** inside list product!");
		return "product";
	}

	@RequestMapping(value = "/product/add", method = RequestMethod.POST)
	@Transactional
	public String addProduct(@ModelAttribute("product") Product product) {
		productService.save(product);
		log.debug("*** inside add product!");

		return "redirect:/product/";
	}

	@RequestMapping("/product/delete/{productId}")
	@Transactional
	public String deleteProduct(@PathVariable("productId") Long personId) {
		productService.delete(personId);
		log.debug("*** inside delete product!");

		return "redirect:/product/";
	}
}
