package coms.TravelApp.service;

import java.util.List;

import coms.TravelApp.entities.Vehicles;

public interface VehicleService {

	public String AddVehicle(Vehicles vehicle);

	public List<Vehicles> VehicleAll();

	public Vehicles SearchVehicle(int Vid);

	public String DeleteVehicle(int Vid);

	public String ModifyVehicle(Vehicles vehicle);

}
