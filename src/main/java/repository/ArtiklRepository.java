package repository;

import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;
import org.springframework.stereotype.Repository;

import model.Artikl;

@Repository
public interface ArtiklRepository extends MongoRepository<Artikl, String> {

	@Query("{'kategorija' : 'POPUST'}")
	List<Artikl> findArtikliNaPopustu();
}
