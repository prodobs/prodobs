package ca.digitaltango.socio.graph.model;

import lombok.Data;

import org.springframework.data.neo4j.annotation.GraphId;
import org.springframework.data.neo4j.annotation.Indexed;
import org.springframework.data.neo4j.annotation.NodeEntity;

@Data
@NodeEntity
public class Decision {
	
	@GraphId
	Long id;

	@Indexed(unique = true)
	public String name;

	public String description;

}
