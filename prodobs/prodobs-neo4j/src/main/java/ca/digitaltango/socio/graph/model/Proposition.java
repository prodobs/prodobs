package ca.digitaltango.socio.graph.model;

import java.util.HashSet;
import java.util.Set;

import lombok.Data;

import org.neo4j.graphdb.Direction;
import org.springframework.data.neo4j.annotation.Fetch;
import org.springframework.data.neo4j.annotation.GraphId;
import org.springframework.data.neo4j.annotation.Indexed;
import org.springframework.data.neo4j.annotation.NodeEntity;
import org.springframework.data.neo4j.annotation.RelatedTo;

@Data
@NodeEntity
public class Proposition {

	@GraphId
	Long id;

	@Indexed(unique = true)
	public String name;

	public String description;

	@RelatedTo(type = "HAS", direction = Direction.BOTH)
	public @Fetch
	Set<Objection> objections = new HashSet<Objection>();

}
