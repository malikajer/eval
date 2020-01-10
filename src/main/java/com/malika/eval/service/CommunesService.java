package com.malika.eval.service;

import com.malika.eval.model.Communes;
import com.malika.eval.repository.CommunesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import javax.persistence.EntityNotFoundException;
import java.util.Optional;

@Service
public class CommunesService {

    @Autowired
    private CommunesRepository communesRepository;

    public Communes findById(Integer id) {
        return communesRepository.findById(id).get();
    }


    public void deleteCommunes(Integer id) {
        communesRepository.deleteById(id);
    }

    public <T extends Communes> T creerCommunes(T e) {
        return communesRepository.save(e);
    }

    public <T extends Communes> T updateCommunes(T communes) {
        return communesRepository.save(communes);
    }

    public Page<Communes> findAllCommunes(Integer page, Integer size, String sortProperty, String sortDirection) {
        Sort sort = Sort.by(new Sort.Order(Sort.Direction.fromString(sortDirection), sortProperty));
        Pageable pageable = PageRequest.of(page, size, sort);
        return communesRepository.findAll(pageable);
    }

    public Optional<Communes> findMyId(Integer id) {
        Optional<Communes> communes = this.communesRepository.findById(id);
        if (communes == null) {
            throw new EntityNotFoundException("Impossible de trouver la communes de l'id " + id);
        }
        return communes;
    }
}
