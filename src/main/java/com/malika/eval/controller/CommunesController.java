package com.malika.eval.controller;


import com.malika.eval.model.Communes;
import com.malika.eval.repository.CommunesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.persistence.EntityNotFoundException;
import java.util.Map;
import java.util.Optional;

@Controller
@RequestMapping("/communes")
public class CommunesController {
    @Autowired
    private CommunesRepository communesRepository;

    @RequestMapping
    public String listCommunes (
            @RequestParam(value = "page", defaultValue = "0") Integer page,
            @RequestParam(value = "size", defaultValue = "10") Integer size,
            @RequestParam(value = "sortDirection",defaultValue = "ASC") Sort.Direction sortDirection,
            @RequestParam(value = "sortProperty",defaultValue = "codeCommuneInsee") String sortProperty,
            Map<String, Object> model
    )
    {
        Pageable pagination = PageRequest.of(page, size, sortDirection, sortProperty);
        Page<Communes>communes = communesRepository.findAll(pagination);

        model.put("communes", communes);
        return "communes/liste";
    }

    @RequestMapping("/{id}")
    public String getCommunesById(@PathVariable("id")Integer id, Map<String, Object> model){
        Optional<Communes> communes= communesRepository.findById(id);
        if (communes.isPresent()) {
            model.put("id",communes.get());
            return "communes/detail";
        }
        throw new EntityNotFoundException("la communes avec l'identifiant"+ id + "n'a pas été trouvé");
    }

}