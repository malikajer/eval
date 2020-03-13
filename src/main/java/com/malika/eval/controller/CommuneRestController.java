package com.malika.eval.controller;

import com.malika.eval.model.Commune;
import com.malika.eval.repository.CommuneRepository;
import com.malika.eval.service.CommuneService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/api/communes")
public class CommuneRestController {

    @Autowired
    private CommuneService communeService;

    @Autowired
    private CommuneRepository communeRepository;

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public Commune findById(@PathVariable(name = "id") Long id) {
        Commune commune = this.communeService.findById(id);
        return commune;
    }

    @RequestMapping(value = "/codeInsee/{codeInsee}", method = RequestMethod.GET)
    public Commune findByCodeInsee(@PathVariable(name = "codeInsee") String codeInsee) {
        Commune commune = this.communeService.findByCodeInsee(codeInsee);
        return commune;
    }

    @RequestMapping(value = "/codePostal/{code_postal}", method = RequestMethod.GET)
    public Commune findByCodePostal(@PathVariable(name = "code_postal") String codePostal) {
        Commune commune = this.communeService.findByCodePostal(codePostal);
        return commune;
    }
}
