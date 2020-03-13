package com.malika.eval.service;

import com.malika.eval.model.Commune;
import com.malika.eval.repository.CommuneRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import javax.persistence.EntityNotFoundException;

@Service
public class CommuneService {

    @Autowired
    private CommuneRepository communeRepository;

    public Commune findById(Long id){
        return communeRepository.findById(id).get();
    }

    public Page<Commune> findAll(Integer page, Integer size, String sortProperty, String sortDirection) {
        Sort sort = Sort.by(new Sort.Order(Sort.Direction.fromString(sortDirection),sortProperty));
        Pageable pageable = PageRequest.of(page,size,sort);
        return communeRepository.findAll(pageable);
    }

    public Commune findByCodeInsee(String codeInsee) {
        Commune commune = this.communeRepository.findByCodeCommuneINSEE(codeInsee);
        if(commune == null){
            throw new EntityNotFoundException("Impossible de trouver la commune avec le code INSEE " + codeInsee);
        }
        return commune;
    }

    public Commune findByCodePostal(String codePostal) {
        Commune commune = this.communeRepository.findByCodePostal(codePostal);
        if(commune == null){
            throw new EntityNotFoundException("Impossible de trouver la commune avec le code postal " + codePostal);
        }
        return commune;
    }

    public Commune findByName(String name) {
        Commune commune = this.communeRepository.findByNomCommune(name);
        if(commune == null){
            throw new EntityNotFoundException("Impossible de trouver la commune avec le nom " + name);
        }
        return commune;
    }

    public Long countCodeInsee(){
        return communeRepository.countDistinctCodeCommuneINSEE();
    }

    public Long countCodePostaux(){
        return communeRepository.countDistinctCodePostal();
    }

    public Commune createCommune(Commune commune){
        return communeRepository.save(commune);
    }

    public <T extends Commune> T updateCommune(T commune) {
        return communeRepository.save(commune);
    }

    public void deleteCommune(Long id){
        communeRepository.deleteById(id);
    }
}

