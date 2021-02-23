package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.model.Subcontractor;

@Repository
public interface SubcontractorRepository extends JpaRepository<Subcontractor, Long> {
}
