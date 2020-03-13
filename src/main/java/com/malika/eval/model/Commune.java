package com.malika.eval.model;

import javax.persistence.*;

@Entity
@Table(name = "communes")
public class Commune {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "code_commune_INSEE")
    private String codeCommuneINSEE;

    @Column(name = "nom_commune")
    private String nomCommune;

    @Column(name = "code_postal")
    private String codePostal;

    @Column(name = "libelle_acheminement")
    private String libelleAcheminement;

    @Column(name = "ligne_5")
    private String ligne5;

    private Long latitude;

    private Long longitude;

    public String getClassName(){
        return this.getClass().getSimpleName();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCodeCommuneINSEE() {
        return codeCommuneINSEE;
    }

    public void setCodeCommuneINSEE(String codeCommuneINSEE) {
        this.codeCommuneINSEE = codeCommuneINSEE;
    }

    public String getNomCommune() {
        return nomCommune;
    }

    public void setNomCommune(String nomCommune) {
        this.nomCommune = nomCommune;
    }

    public String getCodePostal() {
        return codePostal;
    }

    public void setCodePostal(String codePostal) {
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

    public Long getLatitude() {
        return latitude;
    }

    public void setLatitude(Long latitude) {
        this.latitude = latitude;
    }

    public Long getLongitude() {
        return longitude;
    }

    public void setLongitude(Long longitude) {
        this.longitude = longitude;
    }
}
