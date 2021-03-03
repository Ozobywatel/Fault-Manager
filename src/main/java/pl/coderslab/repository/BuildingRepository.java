package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.model.Building;

import java.util.ArrayList;


@Repository
public interface BuildingRepository extends JpaRepository<Building, Long> {

    public ArrayList<String> docTypes = new ArrayList<String>();
}
