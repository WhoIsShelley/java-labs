package edu.hav.labs.model;
/*
  @author   Bohdana Havaleshko
  @project   coursework
  @class  Teacher
  @version  1.0.0 
  @since 20.04.2021
*/

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import nonapi.io.github.classgraph.json.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Schema(description = "Teacher Document")
@Document(collection = "teacher")
public class Teacher {
    @Id
    private String id;
    private Membership membership;
    private String school;
    private String lessons;
}
