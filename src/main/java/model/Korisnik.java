package model;

import java.util.ArrayList;
import java.util.List;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document
public class Korisnik {

	@Id
	private String id;
	private String korisnickoIme;
	private String lozinka;
	private String ime;
	private String prezime;
	private String uloga;
	private String kontaktTelefon;
	private String emailAdresa;
	private String adresa;

	//za kupca
	private List<Artikl> kupljeniArtikli = new ArrayList<Artikl>();
	private List<Artikl> uKorpi = new ArrayList<Artikl>();
	private List<Artikl> omiljeni = new ArrayList<Artikl>();
	
	//za dostavljaca
	private List<Korpa> dodeljenePorudzbine = new ArrayList<Korpa>();
	
	
	public Korisnik() {
		
	}
	

	public Korisnik(String korisnickoIme, String lozinka, String ime, String prezime, String uloga,
			String kontaktTelefon, String emailAdresa, String adresa) {
		super();
		this.korisnickoIme = korisnickoIme;
		this.lozinka = lozinka;
		this.ime = ime;
		this.prezime = prezime;
		this.uloga = uloga;
		this.kontaktTelefon = kontaktTelefon;
		this.emailAdresa = emailAdresa;
		this.adresa = adresa;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getKorisnickoIme() {
		return korisnickoIme;
	}


	public void setKorisnickoIme(String korisnickoIme) {
		this.korisnickoIme = korisnickoIme;
	}


	public String getLozinka() {
		return lozinka;
	}


	public void setLozinka(String lozinka) {
		this.lozinka = lozinka;
	}


	public String getIme() {
		return ime;
	}


	public void setIme(String ime) {
		this.ime = ime;
	}


	public String getPrezime() {
		return prezime;
	}


	public void setPrezime(String prezime) {
		this.prezime = prezime;
	}


	public String getUloga() {
		return uloga;
	}


	public void setUloga(String uloga) {
		this.uloga = uloga;
	}


	public String getKontaktTelefon() {
		return kontaktTelefon;
	}


	public void setKontaktTelefon(String kontaktTelefon) {
		this.kontaktTelefon = kontaktTelefon;
	}


	public String getEmailAdresa() {
		return emailAdresa;
	}


	public void setEmailAdresa(String emailAdresa) {
		this.emailAdresa = emailAdresa;
	}


	public String getAdresa() {
		return adresa;
	}


	public void setAdresa(String adresa) {
		this.adresa = adresa;
	}


	public List<Artikl> getKupljeniArtikli() {
		return kupljeniArtikli;
	}


	public void setKupljeniArtikli(List<Artikl> kupljeniArtikli) {
		this.kupljeniArtikli = kupljeniArtikli;
	}


	public List<Artikl> getuKorpi() {
		return uKorpi;
	}


	public void setuKorpi(List<Artikl> uKorpi) {
		this.uKorpi = uKorpi;
	}


	public List<Artikl> getOmiljeni() {
		return omiljeni;
	}


	public void setOmiljeni(List<Artikl> omiljeni) {
		this.omiljeni = omiljeni;
	}


	public List<Korpa> getDodeljenePorudzbine() {
		return dodeljenePorudzbine;
	}


	public void setDodeljenePorudzbine(List<Korpa> dodeljenePorudzbine) {
		this.dodeljenePorudzbine = dodeljenePorudzbine;
	}
	
}
