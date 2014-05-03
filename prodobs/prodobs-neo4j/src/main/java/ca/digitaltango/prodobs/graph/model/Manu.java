package ca.digitaltango.prodobs.graph.model;

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
/**
 * Manufactured product
 * @author etiennelaverdiere
 *
 */
public class Manu {

    @GraphId Long id;
    
    @Indexed(unique=true)
    public String name;

    @RelatedTo(type="CONTAINS", direction=Direction.BOTH)
    public @Fetch Set<Manu> parts = new HashSet<Manu>();

    public void worksWith(Manu person) {
        parts.add(person);
    }

    public String toString() {
        String results = name + "'s parts include\n";
        if (parts != null) {
            for (Manu manu : parts) {
                results += "\t- " + manu.name + "\n";
            }
        }
        return results;
    }

}