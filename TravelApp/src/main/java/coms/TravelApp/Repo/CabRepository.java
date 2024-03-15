package coms.TravelApp.Repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import coms.TravelApp.entities.CabFares;

@Repository
public interface CabRepository extends JpaRepository<CabFares, Integer> {
	

}
