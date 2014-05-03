package ca.digitaltango.rest.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ca.digitaltango.prodobs.graph.model.Product;
import ca.digitaltango.prodobs.graph.repository.ProductService;

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;

	@RequestMapping("/")
	public String listProduct(Map<String, Object> map) {

		map.put("product", new Product());
		map.put("productList", productService.findAll().iterator());

		return "product";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@Transactional
	public String addProduct(@ModelAttribute("product") Product person) {
		productService.save(person);
		
		return "redirect:/product/";
	}

	@RequestMapping("/delete/{productId}")
	@Transactional
	public String deleteProduct(@PathVariable("productId") Long personId) {
		productService.delete(personId);
		
		return "redirect:/product/";
	}
}
