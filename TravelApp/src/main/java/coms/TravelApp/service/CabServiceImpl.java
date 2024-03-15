package coms.TravelApp.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import coms.TravelApp.Repo.CabRepository;
import coms.TravelApp.entities.CabFares;

@Service
public class CabServiceImpl implements CabService {

	@Autowired
	CabRepository cabr;

	@Override
	public String AddCab(CabFares cab) {
		CabFares c = cabr.save(cab);
		if (c != null)
			return "Success";
		return "Err";
	}

	@Override
	public List<CabFares> CabAll() {
		List<CabFares> cablist = cabr.findAll();
		return cablist;
	}

	@Override
	public CabFares SearchCab(int id) {
		Optional<CabFares> cab = cabr.findById(id);
		if (cab.isPresent())
			return cab.get();
		return null;
	}

	@Override
	public String DeleteCabFare(int id) {
		cabr.deleteById(id);
		return "Success";
	}

	@Override
	public String ModifyCab(CabFares cabFares) {
		if (cabFares != null && cabFares.getId() != 0) {
			Optional<CabFares> existingCabFareOptional = cabr.findById(cabFares.getId());
			if (existingCabFareOptional.isPresent()) {
				CabFares existingCabFare = existingCabFareOptional.get();
				
				existingCabFare.setPickupLoc(cabFares.getPickupLoc());
				existingCabFare.setDropLoc(cabFares.getDropLoc());
				existingCabFare.setFare(cabFares.getFare());
				// Save the updated cab fare to the database
				cabr.save(existingCabFare);
				return "Success";
			}
		}
		return "Failure";
	}

}
