package edu.hav.labs.repository.library;
/*
  @author   Bohdana Havaleshko
  @project   labs
  @interface  LibraryRepository
  @version  1.0.0 
  @since 20.04.2021
*/

import edu.hav.labs.model.Library;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

public interface LibraryRepository extends CrudRepository<Library, String> {
}
