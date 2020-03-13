package com.malika.eval.controller;

import com.malika.eval.model.Commune;
import com.malika.eval.repository.CommuneRepository;
import com.malika.eval.service.CommuneService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import java.util.Map;

@Controller
@RequestMapping("/communes")
public class CommuneJSPController {

    @Autowired
    private CommuneService communeService;

    @Autowired
    private CommuneRepository communeRepository;

    @RequestMapping
    public String findAll(@RequestParam(value = "page", defaultValue = "0") Integer page,
                          @RequestParam(value = "size", defaultValue = "10") Integer size,
                          @RequestParam(value = "sortDirection", defaultValue = "ASC") String sortDirection,
                          @RequestParam(value = "sortProperty", defaultValue = "nomCommune") String sortProperty,
                          Map<String, Object> model){
        Page<Commune> pageCommune = communeService.findAll(page, size, sortProperty, sortDirection);
        model.put("model",pageCommune);
        return "communes/liste";
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String findById(@PathVariable(name = "id") Long id, Map<String, Object> model) {
        Commune commune = this.communeService.findById(id);
        model.put("model", commune);
        return "communes/details";
    }

    @RequestMapping(value = "/codeInsee/{codeInsee}", method = RequestMethod.GET)
    public String findByCodeInsee(@PathVariable(name = "codeInsee") String codeInsee, Map<String, Object> model) {
        Commune commune = this.communeService.findByCodeInsee(codeInsee);
        model.put("model", commune);
        return "communes/details";
    }

    @RequestMapping(value = "/codePostal/{codePostal}", method = RequestMethod.GET)
    public String findByCodePostal(@PathVariable(name = "codePostal") String codePostal, Map<String, Object> model) {
        Commune commune = this.communeService.findByCodePostal(codePostal);
        model.put("model", commune);
        return "communes/details";
    }

    @RequestMapping(value = "/nomCommune/{nomCommune}", method = RequestMethod.GET)
    public String findByName(@PathVariable(name = "nomCommune") String nomCommune, Map<String, Object> model) {
        Commune commune = this.communeService.findByName(nomCommune);
        model.put("model", commune);
        return "communes/details";
    }

    @RequestMapping(value = "/new", method = RequestMethod.GET)
    private String createCommune(Map<String, Object> model, Commune commune) throws Exception {
        model.put("model", commune);
        return "communes/details";
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.POST)
    public String save(@PathVariable(name = "id") Long id, Commune commune, Map<String, Object> model, RedirectAttributes attributes) {
        if(commune != null){
            commune = this.communeService.updateCommune(commune);
        }
        model.put("model", commune);
        model.put("success", "Modifications enregistrées !");

        return "/communes/details";
    }

    @RequestMapping(value = "/{id}/delete", method = RequestMethod.GET)
    public RedirectView deleteCommune(@PathVariable(name = "id") Long id, Map<String, Object> model, RedirectAttributes attributes) {
        this.communeService.deleteCommune(id);
        attributes.addAttribute("success", "Suppression de la commune effectuée !");
        return new RedirectView("/communes");
    }
}
