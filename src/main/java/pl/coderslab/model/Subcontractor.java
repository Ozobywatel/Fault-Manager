package pl.coderslab.model;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.text.DateFormat;
import java.time.LocalDate;

@Entity
@Data
@Table(name = "subcontractors")
public class Subcontractor {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotBlank
    private String companyName;
    @NotBlank
    private String scope;
    @NotBlank
    private String contractNumber;
    @NotBlank
    private LocalDate contractDate;
    @NotBlank
    private String email;
    @NotBlank
    private String details;

}
