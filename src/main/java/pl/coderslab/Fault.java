package pl.coderslab;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.text.DateFormat;

@Entity
@Data
@Table(name = "faults")
public class Fault {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @NotNull
    private Building building;

    @ManyToOne
    @NotNull
    private Document document;

    @ManyToOne
    @NotNull
    private Subcontractor subcontractor;

    @NotBlank
    @Size(max = 600)
    private String description;

    @ManyToOne
    @NotNull
    private User user;



    @NotNull
    private boolean deleted;


}
