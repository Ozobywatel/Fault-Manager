package pl.coderslab.model;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.time.LocalDateTime;

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
    private LocalDateTime created;
    @NotBlank
    private LocalDateTime updated;
    @NotBlank
    private LocalDateTime expirationDate;
    @ManyToOne
    @NotNull
    private Building building;

    private int unitNumber;

    @ManyToOne
    @NotNull
    private User user;


}
