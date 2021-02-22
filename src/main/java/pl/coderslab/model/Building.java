package pl.coderslab.model;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.*;

@Entity
@Data
@Table(name = "buildings")
public class Building {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @ManyToOne
    @NotNull
    private Project project;
    @NotBlank
    private String buildingName;
    @NotBlank
    private String buildingNumber;
    @NotEmpty
    @Size(max = 2000)
    @Size(min = 1)
    private int maxUnitNumber;
    @NotNull
    @Size(max = 2000)
    @Size(min = 1)
    private int minUnitNumber;
    private String addressStreet;
    private String addressNumber;
    private String addressCity;
    @Pattern(regexp = "[0-9]{2}-[0-9]{3}")
    private String addressZipCode;
    private String addressCountry;

}
