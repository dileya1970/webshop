package repository;

import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;
import org.springframework.stereotype.Repository;

import model.Korisnik;
@Repository
public interface KorisnikRepository extends MongoRepository<Korisnik, String> {

	@Query("{'lozinka' : ?0 , 'korisnickoIme' : ?1}")
	List<Korisnik> findUserByPasswordAndUserName(String lozinka,String korisnickoIme);

}
