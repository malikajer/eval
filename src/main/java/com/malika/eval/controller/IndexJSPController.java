package com.malika.eval.controller;

import com.malika.eval.service.CommuneService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Map;

@Controller
public class IndexJSPController {

    @Autowired
    private CommuneService communeService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String countCodeInseeAndCodePostaux(Map<String, Object> model) {
        model.put("nbCodeInsee", communeService.countCodeInsee());
        model.put("nbCodePostaux", communeService.countCodePostaux());
        return "index";
    }
}
