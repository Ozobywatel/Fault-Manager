package pl.coderslab;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

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
    private String budildingName;
    @NotBlank
    private String buildingNumber;
    @NotEmpty
    @Size(max = 2000)
    @Size(min = 1)
    private int maxUnits;
    @NotEmpty
    @Size(max = 2000)
    @Size(min = 1)
    private int minUnits;
    private String streetName;
    private String streetNumber;
    private String city;
    private String country;

}
