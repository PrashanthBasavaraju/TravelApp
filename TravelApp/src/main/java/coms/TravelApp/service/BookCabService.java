package coms.TravelApp.service;

import java.util.List;

import coms.TravelApp.entities.BookCab;



public interface BookCabService {

	public String AddBooking(BookCab bookcab);

	public List<BookCab> AllBookings();

	public BookCab SearchBooking(int Bid);

	public String DeleteBooking(int Bid);

	public String ModifyBooking(BookCab bookcab);
}
