package pl.coderslab.model;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.text.DateFormat;
import java.time.LocalDate;

@Entity
@Data
@Table(name = "documents")
public class Document {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotBlank
    @Enumerated(EnumType.STRING)
    private DocumentType documentType;
    @NotBlank
    private LocalDate created;
    @NotBlank
    private LocalDate updated;
    @NotBlank
    private LocalDate expirationDate;
    @ManyToOne
    @NotNull
    private Building building;
    private int unitNumber;
}
