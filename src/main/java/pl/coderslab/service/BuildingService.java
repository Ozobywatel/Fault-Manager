package pl.coderslab.service;

import pl.coderslab.model.Building;

import java.util.List;
import java.util.Optional;

public interface BuildingService {

    List<Building> getBuildings();

    void add(Building building);

    Optional<Building> get(Long id);

    void delete(Long id);

    void update(Building building);

    List<String> getDocTypes();
}
