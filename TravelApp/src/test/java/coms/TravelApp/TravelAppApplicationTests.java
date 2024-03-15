package coms.TravelApp;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.util.List;

import org.junit.jupiter.api.MethodOrderer.OrderAnnotation;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import coms.TravelApp.entities.BookCab;
import coms.TravelApp.entities.CabFares;
import coms.TravelApp.entities.Vehicles;
import coms.TravelApp.service.BookCabService;
import coms.TravelApp.service.CabService;
import coms.TravelApp.service.VehicleService;

@SpringBootTest
@TestMethodOrder(OrderAnnotation.class)
class TravelAppApplicationTests {

	@Autowired
	CabService cabService;
	@Autowired
	VehicleService vehicleService;
	@Autowired
	BookCabService bookingService;

	// CabFare Service Tests
	@Test
	@Order(1)
	public void testAddCabFare() {
		CabFares cabfare = new CabFares();
		cabfare.setPickupLoc("Nanjangud");
		cabfare.setDropLoc("Mysuru");
		cabfare.setFare(1000);

		String result = cabService.AddCab(cabfare);
		assertNotNull(result);
	}

	@Test
	@Order(2)
	public void testViewAllCabFares() {
		List<CabFares> cabFareList = cabService.CabAll();
		assertThat(cabFareList).size().isGreaterThan(0);
	}

	@Test
	@Order(3)
	public void testGetCabFareById() {
		CabFares cabFare = cabService.SearchCab(52);
		assertNotNull(cabFare);
	}

	@Test
	@Order(4)
	public void testUpdateCabFare() {
		CabFares cabFare = cabService.SearchCab(2);
		cabFare.setFare(28000);
		String result = cabService.ModifyCab(cabFare);
		assertEquals("Success", result);
	}

	@Test
	@Order(5)
	public void testDeleteCabFare() {
		String result = cabService.DeleteCabFare(102);
		assertEquals("Success", result);
	}

	
	//Vehicle Service Test
	@Test
	@Order(6)
	public void testAddVehicle() {
		Vehicles vehicle = new Vehicles();
		vehicle.setVechName("SUV");
		vehicle.setVechNo("KA-15 EF-6574");
		vehicle.setOwnerName("Pramod");
		vehicle.setSeats(6);
		vehicle.setPhone("9852647013");

		String result = vehicleService.AddVehicle(vehicle);
		assertNotNull(result);
	}

	@Test
	@Order(7)
	public void testViewAllVehices() {
		List<Vehicles> vehicleList = vehicleService.VehicleAll();
		assertThat(vehicleList).size().isGreaterThan(0);
	}

	@Test
	@Order(8)
	public void testGetVehicleById() {
		Vehicles vehicle = vehicleService.SearchVehicle(1);
		assertNotNull(vehicle);
	}

	@Test
	@Order(9)
	public void testUpdateVehicle() {
		Vehicles vehicle = vehicleService.SearchVehicle(2);
		vehicle.setVechName("SUV");
		String result = vehicleService.ModifyVehicle(vehicle);
		assertEquals("Success", result);
	}

	@Test
	@Order(10)
	public void testDeleteVehicle() {
		String result = vehicleService.DeleteVehicle(52);
		assertEquals("Success", result);
	}

	
	//BookCsb service Test
	@Test
	@Order(11)
	public void testAddBooking() {

		BookCab booking = new BookCab();
		booking.setCustomerName("Harish");
		booking.setDate("2024-03-15");
		booking.setPickupLocation("Mysuru");
		booking.setDropLocation("Nanjangud");
		booking.setVechNo("KA-15-EF-6574");
		booking.setPhone("9847756332");
		String result = bookingService.AddBooking(booking);
		assertNotNull(result);
	}

	@Test
	@Order(12)
	public void testViewAllBookings() {
		List<BookCab> bookingList = bookingService.AllBookings();
		assertThat(bookingList).size().isGreaterThan(0);
	}

	@Test
	@Order(13)
	public void testGetBookingById() {
		BookCab booking = bookingService.SearchBooking(1);
		assertNotNull(booking);
	}
	
	@Test
	@Order(14)
	public void testUpdateBooking() {
		BookCab booking = bookingService.SearchBooking(1);
		booking.setCustomerName("Naveen Kumar");
		String result = bookingService.ModifyBooking(booking);
		assertEquals("Success", result);
	}
	
	@Test
	@Order(15)
	public void testDeleteBooking() {
		String result = bookingService.DeleteBooking(2);;
		assertEquals("Success", result);
	}

}
