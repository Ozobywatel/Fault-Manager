package pl.coderslab.service;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Repository;
import pl.coderslab.model.Building;
import pl.coderslab.repository.BuildingRepository;


import java.util.List;
import java.util.Optional;

@Primary
@Repository
public class JpaBuildingService implements BuildingService {

    private final BuildingRepository buildingRepository;

    public JpaBuildingService(BuildingRepository buildingRepository) {
        this.buildingRepository = buildingRepository;
    }

    @Override
    public List<Building> getBuildings() {
        return buildingRepository.findAll();
    }

    @Override
    public void add(Building building) {
        buildingRepository.save(building);
    }

    @Override
    public Optional<Building> get(Long id) {
        return buildingRepository.findById(id);
    }

    @Override
    public void delete(Long id) {
        buildingRepository.deleteById(id);
    }

    @Override
    public void update(Building building) {
        buildingRepository.save(building);
    }

}
