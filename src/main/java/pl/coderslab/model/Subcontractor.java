package pl.coderslab.model;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

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
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate contractDate;
    @NotBlank
    private String email;
    @NotBlank
    private String details;

}
