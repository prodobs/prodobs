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
import org.springframework.data.neo4j.annotation.RelatedToVia;

import ca.digitaltango.socio.graph.model.relationship.DecisionEvent;
import ca.digitaltango.socio.graph.model.relationship.PropositionEvent;

@Data
@NodeEntity
public class Circle {

//	Probleme, ne peut pas mettre cette classe dans socio model... ?
	@GraphId
	Long id;

	@Indexed(unique = true)
	public String name;

	@RelatedTo(type = "CONTAINS", direction = Direction.BOTH)
	public @Fetch
	Set<Member> members = new HashSet<Member>();

	@RelatedToVia(type = "HAD_DECISION", direction = Direction.INCOMING)
	public @Fetch
	Set<DecisionEvent> decisionEvents = new HashSet<DecisionEvent>();

	@RelatedToVia(type = "HAD_PROPOSITION", direction = Direction.INCOMING)
	public @Fetch
	Set<PropositionEvent> propositionEvents = new HashSet<PropositionEvent>();

	public void addMember(Member member) {
		members.add(member);
	}

	public String toString() {
		String results = name + "'s parts include\n";
		if (members != null) {
			for (Member manu : members) {
				results += "\t- " + manu.name + "\n";
			}
		}
		return results;
	}

}
