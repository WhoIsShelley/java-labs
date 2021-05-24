package edu.hav.labs.repository.edition;
/*
  @author   Bohdana Havaleshko
  @project   labs
  @interface  EditionRepository
  @version  1.0.0 
  @since 20.04.2021
*/

import edu.hav.labs.model.Edition;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EditionRepository extends MongoRepository<Edition, String> {
}
