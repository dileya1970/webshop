package model;

import java.util.ArrayList;
import java.util.List;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document
public class Korpa {

	@Id
	private String id;
	private String datum;
	private String kupacID;
	private String dostavljacID;
	private String status;
	private double cena;
	private List<Artikl> artikli = new ArrayList<Artikl>();
	
	public Korpa() {
		
	}

	public Korpa(String datum, String kupacID, String dostavljacID, String status, double cena, List<Artikl> artikli) {
		super();
		this.datum = datum;
		this.kupacID = kupacID;
		this.dostavljacID = dostavljacID;
		this.status = status;
		this.cena = cena;
		this.artikli = artikli;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getDatum() {
		return datum;
	}

	public void setDatum(String datum) {
		this.datum = datum;
	}

	public String getKupacID() {
		return kupacID;
	}

	public void setKupacID(String kupacID) {
		this.kupacID = kupacID;
	}

	public String getDostavljacID() {
		return dostavljacID;
	}

	public void setDostavljacID(String dostavljacID) {
		this.dostavljacID = dostavljacID;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public double getCena() {
		return cena;
	}

	public void setCena(double cena) {
		this.cena = cena;
	}

	public List<Artikl> getArtikli() {
		return artikli;
	}

	public void setArtikli(List<Artikl> artikli) {
		this.artikli = artikli;
	}
	
	
}
