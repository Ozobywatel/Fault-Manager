package pl.coderslab.service;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Repository;
import pl.coderslab.model.Fault;
import pl.coderslab.repository.FaultRepository;

import java.util.List;
import java.util.Optional;

@Primary
@Repository
public class JpaFaultService implements FaultService {

    private final FaultRepository faultRepository;

    public JpaFaultService(FaultRepository faultRepository) {
        this.faultRepository = faultRepository;
    }

    @Override
    public List<Fault> getFaults() {
        return faultRepository.findAll();
    }

    @Override
    public void add(Fault fault) {
        faultRepository.save(fault);
    }

    @Override
    public Optional<Fault> get(Long id) {
        return faultRepository.findById(id);
    }

    @Override
    public void delete(Long id) {
        faultRepository.deleteById(id);
    }

    @Override
    public void update(Fault fault) {
        faultRepository.save(fault);
    }

}
