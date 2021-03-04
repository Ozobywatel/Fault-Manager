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

    @Enumerated(EnumType.STRING)
    private DocumentType documentType;
    private LocalDateTime created;
    private LocalDateTime updated;
    private LocalDateTime expirationDate;
    @ManyToOne
    @NotNull
    private Building building;
    @NotNull
    private int unitNumber;

    @ManyToOne
    @NotNull
    private User user;


}
