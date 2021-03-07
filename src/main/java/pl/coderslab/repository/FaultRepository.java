package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.model.Fault;

import java.util.List;

@Repository
public interface FaultRepository extends JpaRepository<Fault, Long> {

    List<Fault> getAllByDocumentId(Long id);
    List<Fault> getAllBySubcontractorId(Long id);
    List<Fault> findAllByDeletedFalse();
    List<Fault> findAllByDocumentIdAndDeleted(Long id, boolean b);
}
