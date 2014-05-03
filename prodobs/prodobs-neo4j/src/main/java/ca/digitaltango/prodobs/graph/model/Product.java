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
public class Product{

    @GraphId Long id;
    
    @Indexed(unique=true)
    public String name;

    @RelatedTo(type="CONTAINS", direction=Direction.BOTH)
    public @Fetch Set<Product> parts = new HashSet<Product>();

    public void worksWith(Product product) {
        parts.add(product);
    }

    public String toString() {
        String results = name + "'s parts include\n";
        if (parts != null) {
            for (Product manu : parts) {
                results += "\t- " + manu.name + "\n";
            }
        }
        return results;
    }

}