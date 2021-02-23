package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.model.Project;

@Repository
public interface ProjectRepository extends JpaRepository<Project, Long> {
}
