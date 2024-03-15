package coms.TravelApp.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;

@Entity
public class BookCab {

	@Id
	@GeneratedValue
	private int Bid;
	private String Date;
	private String PickupLocation;
	private String DropLocation;
	private String VechNo;
	private String CustomerName;
	private String Phone;

	public int getBid() {
		return Bid;
	}

	public void setBid(int bid) {
		Bid = bid;
	}

	public String getDate() {
		return Date;
	}

	public void setDate(String date) {
		Date = date;
	}

	public String getPickupLocation() {
		return PickupLocation;
	}

	public void setPickupLocation(String pickupLocation) {
		PickupLocation = pickupLocation;
	}

	public String getDropLocation() {
		return DropLocation;
	}

	public void setDropLocation(String dropLocation) {
		DropLocation = dropLocation;
	}

	public String getVechNo() {
		return VechNo;
	}

	public void setVechNo(String vechNo) {
		VechNo = vechNo;
	}

	public String getCustomerName() {
		return CustomerName;
	}

	public void setCustomerName(String customerName) {
		CustomerName = customerName;
	}

	public String getPhone() {
		return Phone;
	}

	public void setPhone(String phone) {
		Phone = phone;
	}

}
