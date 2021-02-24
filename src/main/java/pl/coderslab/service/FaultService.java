package pl.coderslab.service;

import pl.coderslab.model.Fault;

import java.util.List;
import java.util.Optional;

public interface FaultService {

    List<Fault> getFaults();

    void add(Fault fault);

    Optional<Fault> get(Long id);

    void delete(Long id);

    void update(Fault fault);
}
