package com.malika.eval.repository;

import com.malika.eval.model.Commune;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface CommuneRepository extends JpaRepository<Commune, Long> {

    public Commune findByCodeCommuneINSEE(String c);

    public Commune findByCodePostal(String cp);

    public Commune findByNomCommune(String n);

    @Query(value = "SELECT COUNT(DISTINCT code_commune_INSEE) FROM communes;", nativeQuery = true)
    public Long countDistinctCodeCommuneINSEE();

    @Query(value = "SELECT COUNT(DISTINCT code_postal) FROM communes;", nativeQuery = true)
    public Long countDistinctCodePostal();
}
