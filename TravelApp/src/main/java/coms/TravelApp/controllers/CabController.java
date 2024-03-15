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

import coms.TravelApp.entities.CabFares;
import coms.TravelApp.service.CabService;

@Controller
public class CabController {

	@Autowired
	CabService cs;

	@GetMapping("/newcab")
	public String NewCab(Model m) {
		m.addAttribute("cabfare", new CabFares());
		return "AddCabFare";
	}

	@PostMapping("newcabinfo")
	public String NewCab(@ModelAttribute CabFares cabfare, Model m) {
		String res = cs.AddCab(cabfare);
		if (res.equals("Success")) {
			m.addAttribute("info", "");
			m.addAttribute("cabfare", new CabFares());
		}
		return "redirect:/caball";
	}

	@GetMapping("caball")
	public String ViewAll(Model m) {
		List<CabFares> farelist = cs.CabAll();
		m.addAttribute("farelist", farelist);
		return "ViewFares";
	}

	@GetMapping("scab")
	public String SearchCab(Model m) {
		return "SearchCab";
	}

	@PostMapping("scabinfo")
	public String SearchCab(@RequestParam("txtid") int id, Model m) {
		CabFares fareinfo = cs.SearchCab(id);

		if (fareinfo != null)
			m.addAttribute("fareinfo", fareinfo);
		else
			m.addAttribute("info", "CabFare Not Found");
		return "SearchCab";
	}

	@GetMapping("modifycab/{id}")
	public String modifyCab(@PathVariable int id, Model m) {
		CabFares cabFares = cs.SearchCab(id);
		m.addAttribute("cabFares", cabFares);
		return "ModifyCabFare";
	}

	@PostMapping("modifycab/{id}")
	public String modifyCabInfo(@ModelAttribute CabFares cabFares, Model m) {
		String result = cs.ModifyCab(cabFares);
		if (result.equals("Success")) {
			m.addAttribute("info", "Cab fare modified successfully.");
		} else {
			m.addAttribute("info", "Failed to modify cab fare.");
		}
		return "redirect:/caball";
	}


	@GetMapping("delcab/{id}")
	public String DeleteCab(@PathVariable int id) {
		cs.DeleteCabFare(id);
		return "redirect:/caball";
	}
}
