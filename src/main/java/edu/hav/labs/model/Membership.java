package edu.hav.labs.model;
/*
  @author   Bohdana Havaleshko
  @project   coursework
  @class  Membership
  @version  1.0.0 
  @since 20.04.2021
*/

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import nonapi.io.github.classgraph.json.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import java.time.LocalDate;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Schema(description = "Membership Document")
@Document(collection = "membership")
public class Membership {
    @Id
    private String id;
    private String name;
    private String phone;
    private Library library;
    private LocalDate dateOfRegistration;
    private LocalDate isValidUntil;
}
