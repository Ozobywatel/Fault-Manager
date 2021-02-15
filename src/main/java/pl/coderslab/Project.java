package pl.coderslab;

import lombok.Data;

import javax.persistence.*;

@Entity
@Data
@Table(name = "projects")
public class Project {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String projectName;
    private String streetName;
    private String number;
    private String city;
    private String country;

}
