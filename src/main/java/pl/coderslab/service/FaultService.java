package pl.coderslab.service;

import pl.coderslab.model.Fault;

import java.util.List;
import java.util.Optional;

public interface FaultService {

    List<Fault> getFaults();

    List<Fault> getAllByDocumentId(Long documentId);

    List<Fault> getAllBySubcontractorId(Long subcontractorId);

    List<Fault> findAllByDeletedFalse();

    List<Fault> findAllByDocumentIdAndDeleted(Long id, boolean b);


    void add(Fault fault);

    Optional<Fault> get(Long id);

    void delete(Long id);

    void update(Fault fault);
}
