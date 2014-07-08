package ca.digitaltango.prodobs.graph.repository;

import org.springframework.data.neo4j.repository.GraphRepository;

import ca.digitaltango.socio.graph.model.Circle;

public interface SocioService extends GraphRepository<Circle> {

	Circle findByName(String title);

	/*
	 * En tant que membre d'un cercle je veux prendre une décision par
	 * consentement
	 * 
	 * En tant que membre d'un cercle, je veux élire un représentant pour une
	 * durée déterminée
	 * 
	 * En tant que membre d'un cercle je veux créer un sous cercle avec un
	 * responsable nommé lors d'une prise de décision spécifique
	 * 
	 * En tant que représentant élu d'un cercle donné, je veux participer à
	 * toutes les réunions de décision du cercle supérieur
	 * 
	 * 
	 * 
	 * le cercle comme lieu de prise de décisions,
	 * 
	 * le consentement comme mode de prise de décisions
	 * 
	 * le double lien comme instrument de communication entre les niveaux
	 * hiérarchiques.
	 * 
	 * l’élection par consentement pour affecter les membres de l’unité de
	 * travail dans leurs fonctions.
	 */
}
