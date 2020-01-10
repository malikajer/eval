package com.malika.eval.controller;


import com.malika.eval.model.Communes;
import com.malika.eval.repository.CommunesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

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
}