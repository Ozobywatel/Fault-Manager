package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.model.Fault;

@Repository
public interface FaultRepository extends JpaRepository<Fault, Long> {
}
