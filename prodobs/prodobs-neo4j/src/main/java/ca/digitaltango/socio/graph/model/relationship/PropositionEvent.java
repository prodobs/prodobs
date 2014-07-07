package ca.digitaltango.socio.graph.model.relationship;

import java.util.Date;

import org.springframework.data.neo4j.annotation.EndNode;
import org.springframework.data.neo4j.annotation.GraphId;
import org.springframework.data.neo4j.annotation.RelationshipEntity;
import org.springframework.data.neo4j.annotation.StartNode;

import ca.digitaltango.socio.graph.model.Circle;
import ca.digitaltango.socio.graph.model.Proposition;

@RelationshipEntity
public class PropositionEvent {

	@GraphId
	Long id;

	Date date;
	
	@StartNode
	private Circle circle;

	@EndNode
	private Proposition proposition;

}
