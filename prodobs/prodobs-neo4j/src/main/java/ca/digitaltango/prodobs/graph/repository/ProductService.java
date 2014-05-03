package ca.digitaltango.prodobs.graph.repository;

import org.springframework.data.neo4j.repository.GraphRepository;

import ca.digitaltango.prodobs.graph.model.Product;


	public interface ProductService extends GraphRepository<Product> {

		Product findByName(String title);

	}

