package coms.TravelApp.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import coms.TravelApp.entities.Vehicles;
import coms.TravelApp.service.VehicleService;

@Controller
public class VehicleController {

	@Autowired
	VehicleService vs;

	@GetMapping("/newvehicle")
	public String NewVehicle(Model m) {
		m.addAttribute("vehicle", new Vehicles());
		return "AddVehicle";
	}

	@PostMapping("newvehicleinfo")
	public String NewCab(@ModelAttribute Vehicles vehicle, Model m) {
		String res = vs.AddVehicle(vehicle);
		if (res.equals("Success")) {
			m.addAttribute("info", "");
			m.addAttribute("vehicle", new Vehicles());
		}
		return "redirect:/vehicleall";
	}

	@GetMapping("vehicleall")
	public String ViewAll(Model m) {
		List<Vehicles> vehiclelist = vs.VehicleAll();
		m.addAttribute("vehiclelist", vehiclelist);
		return "ViewVehicles";
	}

	@GetMapping("svehicle")
	public String Searchvehicle(Model m) {
		return "SearchVehicle";
	}

	@PostMapping("svehicleinfo")
	public String SearchVehicle(@RequestParam("txtVid") int Vid, Model m) {
		Vehicles vehicleinfo = vs.SearchVehicle(Vid);

		if (vehicleinfo != null)
			m.addAttribute("vehicleinfo", vehicleinfo);
		else
			m.addAttribute("info", "Vehicle Not Found");
		return "SearchVehicle";
	}

	

	@GetMapping("modifyvehicle/{Vid}")
	public String modifyvehicle(@PathVariable int Vid, Model m) {
		Vehicles vehicle = vs.SearchVehicle(Vid);
		m.addAttribute("vehicle", vehicle);
		return "ModifyVehicle";
	}

	@PostMapping("modifyvehicle")
	public String modifyVehicleInfo(@ModelAttribute Vehicles vehicle, Model m) {
		String result = vs.ModifyVehicle(vehicle);
		if (result.equals("Success")) {
			m.addAttribute("info", "Vehicle modified successfully.");
		} else {
			m.addAttribute("info", "Failed to modify Vehicle");
		}
		return "redirect:/vehicleall";
	}

	@GetMapping("delvehicle/{Vid}")
	public String DeleteCab(@PathVariable int Vid) {
		vs.DeleteVehicle(Vid);
		return "redirect:/vehicleall";
	}

}
