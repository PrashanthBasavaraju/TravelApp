package coms.TravelApp.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;

@Entity

public class CabFares {
	@Id
	@GeneratedValue
	private int id;
	private String pickupLoc;
	private String dropLoc;
	private float fare;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPickupLoc() {
		return pickupLoc;
	}

	public void setPickupLoc(String pickupLoc) {
		this.pickupLoc = pickupLoc;
	}

	public String getDropLoc() {
		return dropLoc;
	}

	public void setDropLoc(String dropLoc) {
		this.dropLoc = dropLoc;
	}

	public float getFare() {
		return fare;
	}

	public void setFare(float fare) {
		this.fare = fare;
	}

}
