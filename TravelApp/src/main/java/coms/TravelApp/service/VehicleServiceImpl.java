package coms.TravelApp.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import coms.TravelApp.Repo.VehiclesRepository;

import coms.TravelApp.entities.Vehicles;

@Service
public class VehicleServiceImpl implements VehicleService {

	@Autowired
	VehiclesRepository vr;

	@Override
	public String AddVehicle(Vehicles vehicle) {
		Vehicles v = vr.save(vehicle);
		if (v != null)
			return "Success";
		return "Err";
	}

	@Override
	public List<Vehicles> VehicleAll() {
		List<Vehicles> vehiclelist = vr.findAll();
		return vehiclelist;
	}

	@Override
	public Vehicles SearchVehicle(int Vid) {
		Optional<Vehicles> vehicle = vr.findById(Vid);

		if (vehicle.isPresent())
			return vehicle.get();
		return null;
	}

	@Override
	public String DeleteVehicle(int Vid) {
		vr.deleteById(Vid);
		return "Success";

	}

	@Override
	public String ModifyVehicle(Vehicles vehicle) {
		if (vehicle != null && vehicle.getVid() != 0) {
			Optional<Vehicles> existingVehicleOptional = vr.findById(vehicle.getVid());
			if (existingVehicleOptional.isPresent()) {
				Vehicles existingVehicle = existingVehicleOptional.get();

				existingVehicle.setVechName(vehicle.getVechName());
				existingVehicle.setVechNo(vehicle.getVechNo());
				existingVehicle.setOwnerName(vehicle.getOwnerName());
				existingVehicle.setSeats(vehicle.getSeats());
				existingVehicle.setPhone(vehicle.getPhone());

				vr.save(existingVehicle);
				return "Success";
			}
		}
		return "Failure";
	}

}
