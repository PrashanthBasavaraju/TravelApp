package coms.TravelApp.Repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import coms.TravelApp.entities.BookCab;


@Repository
public interface BookCabRepository extends JpaRepository<BookCab, Integer> {

}
