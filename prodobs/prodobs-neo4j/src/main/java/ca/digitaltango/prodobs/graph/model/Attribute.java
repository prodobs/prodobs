package ca.digitaltango.prodobs.graph.model;

import lombok.Data;

import org.springframework.data.neo4j.annotation.GraphId;
import org.springframework.data.neo4j.annotation.Indexed;
import org.springframework.data.neo4j.annotation.NodeEntity;

@Data
@NodeEntity
public class Attribute {

  @GraphId Long id;

  @Indexed(unique=true)
  String name;

  String description;

//  @Query("start movie=node({self}) match movie-->genre<--similar return similar")
//  Iterable<String> similarMovies;
}