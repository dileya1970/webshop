package repository;

import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;
import org.springframework.stereotype.Repository;

import model.Korpa;

@Repository
public interface KorpaRepository extends MongoRepository<Korpa, String> {

	@Query("{'status' : 'DOSTAVLJENO'}")
	List<Korpa> findDostavljeneKorpe();
	
	@Query("{'status' : 'OTKAZANO'}")
	List<Korpa> findOtkazaneKorpe();
}
