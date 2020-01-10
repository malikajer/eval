package com.malika.eval.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Communes {
    @Id

    private Integer id;

    @Column(name = "code_commune_INSEE")
    private Integer codeCommuneInsee;
    @Column(name = "nom_commune")
    private String nomCommune;
    @Column(name = "code_postal")
    private Integer codePostal;
    @Column(name = "libelle_acheminement")
    private String libelleAcheminement;
    @Column(name = "ligne_5")
    private String ligne5;
    private Double latitude;
    private Double longitude;

    public Communes() {
    }

    public Communes(Integer code_commune_INSEE, String nom_commune, Integer code_postal, String libelle_acheminement, String ligne_5, Double latitude, Double longitude) {
        this.codeCommuneInsee = code_commune_INSEE;
        this.nomCommune = nom_commune;
        this.codePostal = code_postal;
        this.libelleAcheminement = libelle_acheminement;
        this.ligne5 = ligne_5;
        this.latitude = latitude;
        this.longitude = longitude;

    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCodeCommuneInsee() {
        return codeCommuneInsee;
    }

    public void setCodeCommuneInsee(Integer codeCommuneInsee) {
        this.codeCommuneInsee = codeCommuneInsee;
    }

    public String getNomCommune() {
        return nomCommune;
    }

    public void setNomCommune(String nomCommune) {
        this.nomCommune = nomCommune;
    }

    public Integer getCodePostal() {
        return codePostal;
    }

    public void setCodePostal(Integer codePostal) {
        this.codePostal = codePostal;
    }

    public String getLibelleAcheminement() {
        return libelleAcheminement;
    }

    public void setLibelleAcheminement(String libelleAcheminement) {
        this.libelleAcheminement = libelleAcheminement;
    }

    public String getLigne5() {
        return ligne5;
    }

    public void setLigne5(String ligne5) {
        this.ligne5 = ligne5;
    }

    public Double getLatitude() {
        return latitude;
    }

    public void setLatitude(Double latitude) {
        this.latitude = latitude;
    }

    public Double getLongitude() {
        return longitude;
    }

    public void setLongitude(Double longitude) {
        this.longitude = longitude;
    }
}
