package pl.coderslab;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.text.DateFormat;

@Entity
@Data
@Table(name = "documents")
public class Document {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    private DateFormat created;
    @NotBlank
    private DateFormat updated;
    @NotBlank
    private DateFormat expirationDate;
}
