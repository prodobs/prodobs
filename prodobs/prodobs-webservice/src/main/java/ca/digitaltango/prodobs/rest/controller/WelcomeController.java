package ca.digitaltango.prodobs.rest.controller;

import java.util.Map;

import lombok.extern.slf4j.Slf4j;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import ca.digitaltango.prodobs.graph.model.Product;

@Slf4j
@Controller
public class WelcomeController {

	@RequestMapping("/stuff")
	public String getStuff(Map<String, Object> map) {
		map.put("product", new Product());
		log.debug("*** inside list product!");
		return "stuff";
	}

}
