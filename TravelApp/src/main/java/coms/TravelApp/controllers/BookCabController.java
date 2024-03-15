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

import coms.TravelApp.entities.BookCab;
import coms.TravelApp.entities.CabFares;
import coms.TravelApp.entities.Vehicles;
import coms.TravelApp.service.BookCabService;
import coms.TravelApp.service.CabServiceImpl;
import coms.TravelApp.service.VehicleServiceImpl;

@Controller
public class BookCabController {

	@Autowired
	CabServiceImpl cabr;

	@Autowired
	VehicleServiceImpl vs;

	@Autowired
	BookCabService bks;

	@GetMapping("/newbooking")
	public String NewBooking(Model m) {
		m.addAttribute("bookcab", new BookCab());
		List<CabFares> cabFareList = cabr.CabAll();
		m.addAttribute("cabFareList", cabFareList);
		List<Vehicles> vehiclelist = vs.VehicleAll();
		m.addAttribute("vehiclelist", vehiclelist);
		return "AddBooking";
	}

	@PostMapping("newbookinginfo")
	public String NewBooking(@ModelAttribute BookCab bookcab, Model m) {
		List<CabFares> cabFareList = cabr.CabAll();
		boolean validBooking = validateBooking(bookcab, cabFareList);
		if (validBooking) {
			String res = bks.AddBooking(bookcab);
			if (res.equals("Success")) {
				m.addAttribute("info", "");
				m.addAttribute("bookcab", new BookCab());
			}
		} else {
			m.addAttribute("error", "Invalid pickup or drop location.");
		}
		return "redirect:/bookingall";
	}

	@GetMapping("bookingall")
	public String ViewAll(Model m) {
		List<BookCab> bknglist = bks.AllBookings();
		m.addAttribute("bknglist", bknglist);
		return "ViewBookings";
	}

	@GetMapping("sbook")
	public String SearchBooking(Model m) {
		return "SearchBooking";
	}

	@PostMapping("sbookinfo")
	public String SearchBooking(@RequestParam("txtBid") int Bid, Model m) {
		BookCab bknginfo = bks.SearchBooking(Bid);

		if (bknginfo != null)
			m.addAttribute("bknginfo", bknginfo);
		else
			m.addAttribute("info", "Booking Not Found");
		return "SearchBooking";
	}

	@GetMapping("modifybookcab/{Bid}")
	public String modifyBookCab(@PathVariable int Bid, Model m) {
		BookCab bookcab = bks.SearchBooking(Bid);
		m.addAttribute("bookcab", bookcab);
		List<CabFares> cabFareList = cabr.CabAll();
		m.addAttribute("cabFareList", cabFareList);
		List<Vehicles> vehiclelist = vs.VehicleAll();
		m.addAttribute("vehiclelist", vehiclelist);
		return "ModifyBooking";
	}

	@PostMapping("modifybookcab")
	public String modifyBookCabInfo(@ModelAttribute BookCab bookcab, Model m) {
		String result = bks.ModifyBooking(bookcab);
		if (result.equals("Success")) {
			m.addAttribute("info", "Booking Details modified successfully.");
		} else {
			m.addAttribute("info", "Failed to modify Bookin Details.");
		}
		return "redirect:/bookingall";
	}
	
	

	@GetMapping("delbookcab/{Bid}")
	public String DeleteCab(@PathVariable int Bid) {
		bks.DeleteBooking(Bid);
		return "redirect:/bookingall";
	}

	private boolean validateBooking(BookCab bookcab, List<CabFares> cabFareList) {
		for (CabFares cabFare : cabFareList) {
			boolean location = cabFare.getPickupLoc().equals(bookcab.getPickupLocation())
					&& cabFare.getDropLoc().equals(bookcab.getDropLocation());
			if (location) {
				return true;
			}
		}
		return false;
	}

}
