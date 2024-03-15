package coms.TravelApp.service;

import java.util.List;

import coms.TravelApp.entities.CabFares;

public interface CabService {

	public String AddCab(CabFares cab);

	public List<CabFares> CabAll();

	public CabFares SearchCab(int id);

	public String DeleteCabFare(int id);

	public String ModifyCab(CabFares cabFares);


}
