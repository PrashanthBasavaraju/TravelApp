package coms.TravelApp.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import coms.TravelApp.Repo.BookCabRepository;
import coms.TravelApp.entities.BookCab;

@Service
public class BookCabImpl implements BookCabService {

	@Autowired
	BookCabRepository bkr;

	@Override
	public String AddBooking(BookCab bookcab) {
		BookCab bk = bkr.save(bookcab);
		if (bk != null)
			return "Success";
		return "Err";
	}

	@Override
	public List<BookCab> AllBookings() {
		List<BookCab> bknglist = bkr.findAll();
		return bknglist;
	}

	@Override
	public BookCab SearchBooking(int Bid) {
		Optional<BookCab> bkng = bkr.findById(Bid);
		if (bkng.isPresent())
			return bkng.get();
		return null;
	}

	@Override
	public String DeleteBooking(int Bid) {
		bkr.deleteById(Bid);
         return "Success";
		
	}

	@Override
	public String ModifyBooking(BookCab bookcab) {
		if (bookcab != null && bookcab.getBid() != 0) {
			Optional<BookCab> existingBookingOptional = bkr.findById(bookcab.getBid());
			if (existingBookingOptional.isPresent()) {
				BookCab existingBookCab = existingBookingOptional.get();

				existingBookCab.setDate(bookcab.getDate());
				existingBookCab.setCustomerName(bookcab.getCustomerName());
				existingBookCab.setPickupLocation(bookcab.getPickupLocation());
				existingBookCab.setDropLocation(bookcab.getDropLocation());
				existingBookCab.setVechNo(bookcab.getVechNo());
				existingBookCab.setPhone(bookcab.getPhone());

				bkr.save(existingBookCab);
				return "Success";
			}
		}
		return "Failure";

	}
}
