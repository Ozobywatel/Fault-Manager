package pl.coderslab.service;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Repository;
import pl.coderslab.model.Project;
import pl.coderslab.repository.ProjectRepository;

import java.util.List;
import java.util.Optional;

@Primary
@Repository
public class JpaProjectService implements ProjectService {

    private final ProjectRepository projectRepository;

    public JpaProjectService(ProjectRepository projectRepository) {
        this.projectRepository = projectRepository;
    }

    @Override
    public List<Project> getProjects() {
        return projectRepository.findAll();
    }

    @Override
    public void add(Project project) {
        projectRepository.save(project);
    }

    @Override
    public Optional<Project> get(Long id) {
        return projectRepository.findById(id);
    }

    @Override
    public void delete(Long id) {
        projectRepository.deleteById(id);
    }

    @Override
    public void update(Project project) {
        projectRepository.save(project);
    }

}
