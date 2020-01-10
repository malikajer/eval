package com.malika.eval.repository;

import com.malika.eval.model.Communes;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface CommunesRepository extends JpaRepository<Communes, Integer> {

        Optional<Communes> findById(Integer Id);

        List<Communes> findByCodeCommuneInsee(String code_commune_INSEE);

        List<Communes> findByNomCommune(String nom_commune);

        List<Communes> findByCodePostal(Integer code_postal);

        List<Communes> findByLibelleAcheminement(String libelle_acheminement);

        List<Communes> findByLigne5(String ligne_5);


    }

