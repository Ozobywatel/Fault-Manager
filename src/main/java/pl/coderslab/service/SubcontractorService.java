package pl.coderslab.service;

import pl.coderslab.model.Subcontractor;

import java.util.List;
import java.util.Optional;

public interface SubcontractorService {

    List<Subcontractor> getSubcontractors();

    void add(Subcontractor subcontractor);

    Optional<Subcontractor> get(Long id);

    void delete(Long id);

    void update(Subcontractor subcontractor);
}
