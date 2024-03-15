package coms.TravelApp.Repo;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import coms.TravelApp.entities.Vehicles;

@Repository
public interface VehiclesRepository extends JpaRepository<Vehicles, Integer> {

}
