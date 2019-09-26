package model;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document
public class Artikl {

	@Id
	private String id;
	private String naziv;
	private String opis;
	private double cena;
	private int kolicina;
	private String kategorija;

	public Artikl() {
		
	}

	public Artikl(String naziv, String opis, double cena, int kolicina, String kategorija) {
		super();
		this.naziv = naziv;
		this.opis = opis;
		this.cena = cena;
		this.kolicina = kolicina;
		this.kategorija = kategorija;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getNaziv() {
		return naziv;
	}

	public void setNaziv(String naziv) {
		this.naziv = naziv;
	}

	public String getOpis() {
		return opis;
	}

	public void setOpis(String opis) {
		this.opis = opis;
	}

	public double getCena() {
		return cena;
	}

	public void setCena(double cena) {
		this.cena = cena;
	}

	public int getKolicina() {
		return kolicina;
	}

	public void setKolicina(int kolicina) {
		this.kolicina = kolicina;
	}

	public String getKategorija() {
		return kategorija;
	}

	public void setKategorija(String kategorija) {
		this.kategorija = kategorija;
	}
	
	
}
