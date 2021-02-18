package pl.coderslab.model;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.text.DateFormat;

@Entity
@Data
@Table(name = "documents")
public class Document {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotBlank
    private DocumentType documentType;
    @NotBlank
    private DateFormat created;
    @NotBlank
    private DateFormat updated;
    @NotBlank
    private DateFormat expirationDate;
    @ManyToOne
    @NotNull
    private Building building;
    private int unitNumber;
}
