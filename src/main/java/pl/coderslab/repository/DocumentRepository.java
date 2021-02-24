package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.model.Document;

@Repository
public interface DocumentRepository extends JpaRepository<Document, Long> {
}
