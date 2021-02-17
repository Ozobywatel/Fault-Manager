package pl.coderslab;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

@Entity
@Data
@Table(name = "projects")
public class Project {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotBlank
    private String projectName;
    @NotBlank
    private String addressStreet;
    @NotBlank
    private String addressNumber;
    @NotBlank
    private String addressCity;
    @Pattern(regexp = "[0-9]{2}-[0-9]{3}")
    private String addressZipCode;
    @NotBlank
    private String addressCountry;

}
