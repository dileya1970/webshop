package controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Artikl;
import model.Korisnik;
import model.Korpa;
import repository.ArtiklRepository;
import repository.KorisnikRepository;
import repository.KorpaRepository;

@Controller
@RequestMapping(value = "/korisnik")
public class KorisnikController {

	@Autowired
	KorisnikRepository korisnikRepository;

	@Autowired
	KorpaRepository korpaRepository;

	@Autowired
	ArtiklRepository artiklRepository;

	@RequestMapping(value = "/registracija", method = RequestMethod.POST)
	public String registravija(String korisnickoIme, String lozinka, String ime, String prezime, String kontaktTelefon,
			String emailAdresa, String adresa) {

		Korisnik korisnik = new Korisnik(korisnickoIme, lozinka, ime, prezime, "KUPAC", kontaktTelefon, emailAdresa,
				adresa);

		korisnikRepository.insert(korisnik);

		return "index.jsp";
	}

	@RequestMapping(value = "/prijaviSe", method = RequestMethod.POST)
	public String prijaviSe(Model m, String korisnickoIme, String lozinka, HttpSession session) {
		Korisnik k = null;
		List<Korisnik> korisnici = korisnikRepository.findUserByPasswordAndUserName(lozinka, korisnickoIme);
		try {
			k = korisnici.get(0);

		} catch (Exception e) {
			System.out.println("Wrong username or password!");
		}

		if (k == null) {
			m.addAttribute("message", "Wrong username or password!");
		} else {
			session.setAttribute("logovanKorisnik", k);
			m.addAttribute("logovanKorisnik", k);
		}

		return "index.jsp";
	}

	@RequestMapping(value = "/sviArtikli", method = RequestMethod.GET)
	public String sviArtikli(Model m) {
		List<Artikl> artikli = artiklRepository.findAll();

		m.addAttribute("artikli", artikli);
		return "index.jsp";
	}

	@RequestMapping(value = "/kategorije", method = RequestMethod.GET)
	public String kategorije(Model m) {
		List<Artikl> artikli = artiklRepository.findAll();
		List<String> kategorije = new ArrayList<String>();
		for (Artikl a : artikli) {
			if (!kategorije.contains(a.getKategorija()))
				kategorije.add(a.getKategorija());
		}
		m.addAttribute("kategorije", kategorije);
		return "index.jsp";
	}

	@RequestMapping(value = "/sortiraj", method = RequestMethod.GET)
	public String sortiraj(Model m) {
		List<Artikl> artikli = artiklRepository.findAll();
		artikli.sort((Artikl a1, Artikl a2) -> a1.getNaziv().compareTo(a2.getNaziv()));
		m.addAttribute("artikli", artikli);
		return "index.jsp";
	}

	@RequestMapping(value = "/artikliKategorije/{kategorija}", method = RequestMethod.GET)
	public String artikliKategorije(Model m, @PathVariable String kategorija) {
		List<Artikl> artikli = artiklRepository.findAll();
		List<Artikl> artikliKategorije = new ArrayList<Artikl>();
		for (Artikl a : artikli) {
			if (a.getKategorija().equals(kategorija)) {
				artikliKategorije.add(a);
			}

		}
		m.addAttribute("artikli", artikliKategorije);
		return "index.jsp";
	}

	@RequestMapping(value = "/dodajArtikl", method = RequestMethod.POST)
	public String dodajArtikl(String naziv, String opis, double cena, int kolicina, String kategorija) {
		Artikl a = new Artikl(naziv, opis, cena, kolicina, kategorija);
		artiklRepository.insert(a);
		return "index.jsp";
	}

	@RequestMapping(value = "/obrisiArtikl/{artiklId}", method = RequestMethod.GET)
	public String obrisiArtikl(Model m, @PathVariable String artiklId) {

		Artikl a = artiklRepository.findById(artiklId).get();
		artiklRepository.delete(a);

		return "index.jsp";
	}

	@RequestMapping(value = "/izmeniArtikl/{artiklId}", method = RequestMethod.POST)
	public String izmeniArtikl(Model m, @PathVariable String artiklId, String naziv, String opis, double cena,
			int kolicina, String kategorija) {

		Artikl a = artiklRepository.findById(artiklId).get();

		a.setNaziv(naziv);
		a.setOpis(opis);
		a.setCena(cena);
		a.setKolicina(kolicina);
		a.setKategorija(kategorija);

		artiklRepository.save(a);

		return "index.jsp";
	}

	@RequestMapping(value = "/getArtikl/{artiklId}", method = RequestMethod.GET)
	public String getArtikl(Model m, @PathVariable String artiklId) {

		Artikl a = artiklRepository.findById(artiklId).get();

		m.addAttribute("a", a);
		return "index.jsp";
	}

	@RequestMapping(value = "/kreirajIzvestaZaMesec", method = RequestMethod.GET)
	public String kreirajIzvestaZaMesec(Model m) throws ParseException {

		Date date;
		List<Korpa> dostavljeneKorpe = korpaRepository.findDostavljeneKorpe();
		List<Korpa> otkazaneKorpe = korpaRepository.findOtkazaneKorpe();
		List<String> imenaKupaca = new ArrayList<String>();
		double profit = 0;
		List<Korpa> izvestajZaMesec = new ArrayList<Korpa>();
		for (Korpa k : dostavljeneKorpe) {
			// preuzmemo string date i vratimo ga u java.util.Date format
			String s = k.getDatum();
			date = new SimpleDateFormat("EEE MMM dd HH:mm:ss zzz yyyy").parse(s);
			// oduzmemo od trenutnog datuma 1 mesec
			Calendar cal = Calendar.getInstance();
			cal.add(Calendar.MONTH, -1);
			Date mesecPre = cal.getTime();
			if (date.after(mesecPre)) {
				izvestajZaMesec.add(k);
				for (Korisnik ko : korisnikRepository.findAll()) {
					if (k.getKupacID().equals(ko.getId())) {
						imenaKupaca.add(ko.getIme());
					}
				}
				profit += k.getCena();
			}
		}

		for (Korpa k1 : otkazaneKorpe) {
			String s = k1.getDatum();
			date = new SimpleDateFormat("EEE MMM dd HH:mm:ss zzz yyyy").parse(s);
			Calendar cal = Calendar.getInstance();
			cal.add(Calendar.MONTH, -1);
			Date mesecPre = cal.getTime();
			if (date.after(mesecPre)) {
				izvestajZaMesec.add(k1);
				for (Korisnik ko1 : korisnikRepository.findAll()) {
					if (k1.getKupacID().equals(ko1.getId())) {
						imenaKupaca.add(ko1.getIme());
					}
				}
			}

		}

		m.addAttribute("izvestaj", izvestajZaMesec);
		m.addAttribute("imenaaa", imenaKupaca);
		m.addAttribute("profit", profit);

		return "index.jsp";
	}

	@RequestMapping(value = "/kreirajIzvestajZaNedelju", method = RequestMethod.GET)
	public String kreirajIzvestajZaNedelju(Model m) throws ParseException {
		Date date;
		List<Korpa> dostavljeneKorpe = korpaRepository.findDostavljeneKorpe();
		List<Korpa> otkazaneKorpe = korpaRepository.findOtkazaneKorpe();
		List<String> imenaKupaca = new ArrayList<String>();
		double profit = 0;
		List<Korpa> izvestajZaNedelju = new ArrayList<Korpa>();
		for (Korpa k : dostavljeneKorpe) {
			String s = k.getDatum();
			date = new SimpleDateFormat("EEE MMM dd HH:mm:ss zzz yyyy").parse(s);

			Calendar cal = Calendar.getInstance();
			cal.add(Calendar.DATE, -7);
			Date nedeljuPre = cal.getTime();

			if (date.after(nedeljuPre)) {
				izvestajZaNedelju.add(k);
				for (Korisnik ko : korisnikRepository.findAll()) {
					if (k.getKupacID().equals(ko.getId())) {
						imenaKupaca.add(ko.getIme());
					}
				}
				profit += k.getCena();
			}
		}

		for (Korpa k1 : otkazaneKorpe) {
			String s = k1.getDatum();
			date = new SimpleDateFormat("EEE MMM dd HH:mm:ss zzz yyyy").parse(s);

			Calendar cal = Calendar.getInstance();
			cal.add(Calendar.DATE, -7);
			Date nedeljuPre = cal.getTime();

			if (date.after(nedeljuPre)) {
				izvestajZaNedelju.add(k1);
				for (Korisnik ko : korisnikRepository.findAll()) {
					if (k1.getKupacID().equals(ko.getId())) {
						imenaKupaca.add(ko.getIme());
					}
				}
			}

		}

		m.addAttribute("izvestaj", izvestajZaNedelju);
		m.addAttribute("imenaaa", imenaKupaca);
		m.addAttribute("profit", profit);
		return "index.jsp";
	}

	@RequestMapping(value = "/izvestajZaDanas", method = RequestMethod.GET)
	public String izvestajZaDanas(Model m) throws ParseException {
		Date date;
		List<Korpa> dostavljeneKorpe = korpaRepository.findDostavljeneKorpe();
		List<Korpa> otkazaneKorpe = korpaRepository.findOtkazaneKorpe();
		List<String> imenaKupaca = new ArrayList<String>();
		double profit = 0;
		List<Korpa> izvestajZaDanas = new ArrayList<Korpa>();
		for (Korpa k : dostavljeneKorpe) {
			String s = k.getDatum();
			date = new SimpleDateFormat("EEE MMM dd HH:mm:ss zzz yyyy").parse(s);

			Calendar cal = Calendar.getInstance();
			cal.add(Calendar.DATE, -1);
			Date juce = cal.getTime();

			if (date.after(juce)) {
				izvestajZaDanas.add(k);
				for (Korisnik ko : korisnikRepository.findAll()) {
					if (k.getKupacID().equals(ko.getId())) {
						imenaKupaca.add(ko.getIme());
					}
				}
				profit += k.getCena();
			}
		}

		for (Korpa k1 : otkazaneKorpe) {
			String s = k1.getDatum();
			date = new SimpleDateFormat("EEE MMM dd HH:mm:ss zzz yyyy").parse(s);

			Calendar cal = Calendar.getInstance();
			cal.add(Calendar.DATE, -1);
			Date juce = cal.getTime();

			if (date.after(juce)) {
				izvestajZaDanas.add(k1);
				for (Korisnik ko : korisnikRepository.findAll()) {
					if (k1.getKupacID().equals(ko.getId())) {
						imenaKupaca.add(ko.getIme());
					}
				}
			}

		}

		m.addAttribute("izvestaj", izvestajZaDanas);
		m.addAttribute("imenaaa", imenaKupaca);
		m.addAttribute("profit", profit);
		return "index.jsp";
	}

	@RequestMapping(value = "/naPopustu", method = RequestMethod.GET)
	public String naPopustu(Model m) {

		List<Artikl> artikli = artiklRepository.findArtikliNaPopustu();
		m.addAttribute("artikli", artikli);

		return "index.jsp";
	}

	@RequestMapping(value = "/dodajDostavljaca", method = RequestMethod.POST)
	public String dodajDostavljaca(String korisnickoIme, String lozinka, String ime, String prezime,
			String kontaktTelefon, String emailAdresa, String adresa) {

		Korisnik korisnik = new Korisnik(korisnickoIme, lozinka, ime, prezime, "DOSTAVLJAC", kontaktTelefon, emailAdresa,
				adresa);

		korisnikRepository.insert(korisnik);

		return "index.jsp";
	}

	@RequestMapping(value = "/odjaviSe", method = RequestMethod.GET)
	public String odjaviSe(HttpSession session) {
		session.setAttribute("logovanKorisnik", null);
		return "index.jsp";
	}

	@RequestMapping(value = "/kupi/{korisnikId}", method = RequestMethod.GET)
	public String kreirajKorpu(@PathVariable String korisnikId) {
		Korisnik k = korisnikRepository.findById(korisnikId).get();
		List<Artikl> uKorpi = k.getuKorpi();
		k.setuKorpi(new ArrayList<Artikl>());
		double cena = 0;

		for (Artikl a : uKorpi) {

			cena += a.getCena();
		}
		Korpa kor = new Korpa(new Date().toString(), korisnikId, null, "KUPLJENO", cena, uKorpi);

		List<Artikl> kupljeniArtikli = k.getKupljeniArtikli();
		for (Artikl a1 : uKorpi) {
			kupljeniArtikli.add(a1);
		}
		k.setKupljeniArtikli(kupljeniArtikli);

		korpaRepository.insert(kor);
		korisnikRepository.save(k);

		return "index.jsp";
	}

	@RequestMapping(value = "/prikaziOmiljne/{korisnikId}", method = RequestMethod.GET)
	public String prikaziOmiljne(Model m, @PathVariable String korisnikId) {

		List<Artikl> omiljeni = korisnikRepository.findById(korisnikId).get().getOmiljeni();

		m.addAttribute("omiljeni", omiljeni);

		return "index.jsp";
	}

	@RequestMapping(value = "/prikaziKupljene/{korisnikId}", method = RequestMethod.GET)
	public String prikaziKupljene(Model m, @PathVariable String korisnikId) {

		List<Artikl> kupljeni = korisnikRepository.findById(korisnikId).get().getKupljeniArtikli();

		m.addAttribute("kupljeni", kupljeni);

		return "index.jsp";
	}

	@RequestMapping(value = "/dodajUOmiljene/{korisnikId}/{artiklId}", method = RequestMethod.GET)
	public String dodajUOmiljene(Model m, @PathVariable String korisnikId, @PathVariable String artiklId) {

		Korisnik k = korisnikRepository.findById(korisnikId).get();
		Artikl a = artiklRepository.findById(artiklId).get();
		k.getOmiljeni().add(a);
		korisnikRepository.save(k);

		return "index.jsp";
	}

	@RequestMapping(value = "/prikaziKorisnika/{korisnikId}", method = RequestMethod.GET)
	public String prikaziKorisnika(Model m, @PathVariable String korisnikId) {

		Korisnik k = korisnikRepository.findById(korisnikId).get();
		m.addAttribute("korisnik", k);

		if (k.getUloga() == "KUPAC") {

			List<Artikl> kupljeni = k.getKupljeniArtikli();

			m.addAttribute("kupljeni", kupljeni);

		} else if (k.getUloga() == "DOSTAVLJAC") {

			List<Korpa> dodeljeneKorpe = k.getDodeljenePorudzbine();

			m.addAttribute("dodeljeneKorpe", dodeljeneKorpe);
		}

		return "index.jsp";
	}

	@RequestMapping(value = "/getUKorpi/{korisnikId}", method = RequestMethod.GET)
	public String getUKorpi(Model m, @PathVariable String korisnikId) {

		Korisnik k = korisnikRepository.findById(korisnikId).get();

		List<Artikl> uKorpi = k.getuKorpi();

		m.addAttribute("uKorpi", uKorpi);

		return "index.jsp";
	}

	@RequestMapping(value = "/getKorpe", method = RequestMethod.GET)
	public String getKorpe(Model m) {

		List<Korpa> korpe = korpaRepository.findAll();
		List<Korpa> retKorpa = new ArrayList<Korpa>();
		List<String> imenaKupaca = new ArrayList<String>();

		for (Korpa k : korpe) {
			if (k.getStatus().equals("KUPLJENO")) {
				retKorpa.add(k);
				imenaKupaca.add(korisnikRepository.findById(k.getKupacID()).get().getIme());
			}

		}

		m.addAttribute("korpe", retKorpa);
		m.addAttribute("names", imenaKupaca);

		return "index.jsp";
	}

	@RequestMapping(value = "/sviKorisnici", method = RequestMethod.GET)
	public String sviKorisnici(Model m) {

		List<Korisnik> korisnici = korisnikRepository.findAll();
		m.addAttribute("korisnici", korisnici);

		return "index.jsp";
	}

	@RequestMapping(value = "/selektujArtikl/{artiklId}/{korisnikId}", method = RequestMethod.GET)
	public String selektujArtikl(@PathVariable String korisnikId, @PathVariable String artiklId) {

		Korisnik k = korisnikRepository.findById(korisnikId).get();
		Artikl a = artiklRepository.findById(artiklId).get();
		k.getuKorpi().add(a);
		korisnikRepository.save(k);

		return "index.jsp";
	}

	@RequestMapping(value = "/oznaciKaoDostavljeno/{korpaID}", method = RequestMethod.GET)
	public String oznaciKaoDostavljeno(@PathVariable String korpaID) {

		Korpa k = korpaRepository.findById(korpaID).get();
		Korisnik korisnik = korisnikRepository.findById(k.getDostavljacID()).get();
		int i =0;
		for(Korpa kor : korisnik.getDodeljenePorudzbine()) {
			if(kor.getId().equals(korpaID))
				break;
			
			i++;
		}
		
		korisnik.getDodeljenePorudzbine().remove(i);
		k.setStatus("DOSTAVLJENO");
		korpaRepository.save(k);
		korisnikRepository.save(korisnik);
		return "index.jsp";
	}

	@RequestMapping(value = "/zameniUlogu/{korisnikId}/{uloga}", method = RequestMethod.GET)
	public String zameniUlogu(@PathVariable String korisnikId, @PathVariable String uloga) {

		Korisnik k = korisnikRepository.findById(korisnikId).get();

		if (uloga.equals("ADMIN"))
			k.setUloga("ADMIN");

		if (uloga.equals("KUPAC"))
			k.setUloga("KUPAC");

		if (uloga.equals("DOSTAVLJAC"))
			k.setUloga("DOSTAVLJAC");

		korisnikRepository.save(k);

		return "index.jsp";
	}

	@RequestMapping(value = "/preuzmiPorudzbinu/{korpaId}/{korisnikId}", method = RequestMethod.GET)
	public String preuzmiPorudzbinu(@PathVariable String korpaId, @PathVariable String korisnikId) {

		Korpa korpa = korpaRepository.findById(korpaId).get();
		Korisnik k = korisnikRepository.findById(korisnikId).get();

		k.getDodeljenePorudzbine().add(korpa);
		korpa.setDostavljacID(k.getId());
		korpa.setStatus("DOSTAVA_U_TOKU");

		korpaRepository.save(korpa);
		korisnikRepository.save(k);

		return "index.jsp";
	}

	@RequestMapping(value = "/mojePorudzbine/{korisnikId}", method = RequestMethod.GET)
	public String mojePorudzbine(Model m, @PathVariable String korisnikId) {

		Korisnik k = korisnikRepository.findById(korisnikId).get();
		List<Korpa> porudzbine = new ArrayList<Korpa>();

		for (Korpa kor : k.getDodeljenePorudzbine()) {
			if (kor.getStatus().equals("DOSTAVA_U_TOKU")) {
				porudzbine.add(kor);
			}

		}

		List<String> imenaKupaca = new ArrayList<String>();

		for (Korpa kor1 : porudzbine) {

			imenaKupaca.add(korisnikRepository.findById(kor1.getKupacID()).get().getIme());

		}

		m.addAttribute("moje", porudzbine);
		m.addAttribute("imenaKupaca", imenaKupaca);
		return "index.jsp";
	}

	@RequestMapping(value = "/dostavljenePorudzbine/{korisnikId}", method = RequestMethod.GET)
	public String dostavljenePorudzbine(Model m, @PathVariable String korisnikId) {

		List<Korpa> korpe = korpaRepository.findAll();
		Korisnik k = korisnikRepository.findById(korisnikId).get();
		List<Korpa> porudzbine = new ArrayList<Korpa>();

		for (Korpa kor : korpe) {
			if (kor.getStatus().equals("DOSTAVLJENO") && kor.getDostavljacID().equals(k.getId()))
				porudzbine.add(kor);

		}

		List<String> imenaKupaca = new ArrayList<String>();

		for (Korpa kor1 : porudzbine) {

			imenaKupaca.add(korisnikRepository.findById(kor1.getKupacID()).get().getIme());

		}
		m.addAttribute("dostavljene", porudzbine);
		m.addAttribute("names", imenaKupaca);
		return "index.jsp";
	}

	@RequestMapping(value = "/otkaziPorudzbinu/{korpaId}/{korisnikId}", method = RequestMethod.GET)
	public String cancelOrder(@PathVariable String korpaId, @PathVariable String korisnikId) {

		Korpa korpa = korpaRepository.findById(korpaId).get();
		Korisnik k = korisnikRepository.findById(korisnikId).get();
		int i =0;
		for(Korpa kor : k.getDodeljenePorudzbine()) {
			if(kor.getId().equals(korpaId))
				break;
			
			i++;
		}
		
		k.getDodeljenePorudzbine().remove(i);
		korpa.setStatus("OTKAZANO");

		korpaRepository.save(korpa);
		korisnikRepository.save(k);

		return "index.jsp";

	}

	@RequestMapping(value = "/obrisiKorisnika/{korisnikId}", method = RequestMethod.GET)
	public String obrisiKorisnika(Model m, @PathVariable String korisnikId) {

		Korisnik k = korisnikRepository.findById(korisnikId).get();
		korisnikRepository.delete(k);

		return "index.jsp";
	}

	@RequestMapping(value = "/getKorisnik/{korisnikId}", method = RequestMethod.GET)
	public String getKorisnik(Model m, @PathVariable String korisnikId) {

		Korisnik k = korisnikRepository.findById(korisnikId).get();

		m.addAttribute("k", k);

		return "index.jsp";
	}

	@RequestMapping(value = "/izmeniDostavljaca/{korisnikId}", method = RequestMethod.POST)
	public String izmeniDostavljaca(@PathVariable String korisnikId, String korisnickoIme, String lozinka, String ime,
			String prezime, String kontaktTelefon, String emailAdresa, String adresa) {

		Korisnik k = korisnikRepository.findById(korisnikId).get();

		k.setAdresa(adresa);
		k.setEmailAdresa(emailAdresa);
		k.setIme(ime);
		k.setPrezime(prezime);
		k.setKontaktTelefon(kontaktTelefon);
		k.setUloga("DOSTAVLJAC");

		korisnikRepository.save(k);

		return "index.jsp";
	}

	@RequestMapping(value = "/traziArtikl", method = RequestMethod.POST)
	public String traziArtikl(Model m, String naziv, String opis, String cena) {

		List<Artikl> artikli = artiklRepository.findAll();
		List<Artikl> nadjeniArtikli = new ArrayList<Artikl>();

		for (Artikl a : artikli) {
			if (!a.getNaziv().toLowerCase().trim().contains(naziv.toLowerCase().trim()) && !naziv.equals(""))
				continue;
			if (!a.getOpis().toLowerCase().trim().contains(opis.toLowerCase().trim()) && !opis.equals(""))
				continue;

			try {
				if (a.getCena() != Double.parseDouble(cena)) {
					continue;
				}
			} catch (Exception e) {

			}

			nadjeniArtikli.add(a);

		}

		m.addAttribute("nadjeniArtikli", nadjeniArtikli);
		return "index.jsp";
	}

}
