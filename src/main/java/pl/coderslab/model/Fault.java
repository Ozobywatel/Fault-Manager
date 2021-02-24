package pl.coderslab.model;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Data
@Table(name = "faults")
public class Fault {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @NotNull
    private Document document;

    @ManyToOne
    @NotNull
    private Subcontractor subcontractor;

    @NotBlank
    @Size(max = 600)
    private String description;



    @NotNull
    private boolean deleted;


}
