package pl.coderslab.service;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Repository;
import pl.coderslab.model.Subcontractor;
import pl.coderslab.repository.SubcontractorRepository;

import java.util.List;
import java.util.Optional;

@Primary
@Repository
public class JpaSubcontractorService implements SubcontractorService {

    private final SubcontractorRepository subcontractorRepository;

    public JpaSubcontractorService(SubcontractorRepository subcontractorRepository) {
        this.subcontractorRepository = subcontractorRepository;
    }

    @Override
    public List<Subcontractor> getSubcontractors() {
        return subcontractorRepository.findAll();
    }

    @Override
    public void add(Subcontractor subcontractor) {
        subcontractorRepository.save(subcontractor);
    }

    @Override
    public Optional<Subcontractor> get(Long id) {
        return subcontractorRepository.findById(id);
    }

    @Override
    public void delete(Long id) {
        subcontractorRepository.deleteById(id);
    }

    @Override
    public void update(Subcontractor subcontractor) {
        subcontractorRepository.save(subcontractor);
    }

}
