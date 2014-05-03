package ca.digitaltango.prodobs.graph.repository;

import org.springframework.data.neo4j.repository.GraphRepository;

import ca.digitaltango.prodobs.graph.model.Manu;


	public interface ManuService extends GraphRepository<Manu> {

		Manu findByName(String title);

	}

