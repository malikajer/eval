<%@ page import="com.malika.eval.model.Commune" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="../tags/header.jsp" %>

<% Commune commune = (Commune) pageContext.findAttribute("model");%>
<div class="container">
    <div class="row">
        <form id="saveForm" action="/<%= commune.getClassName().toLowerCase() + "s"%>/${model.id}" method="post">
            <div class="col-lg-12">
                <div class="form-group">
                    <label class="form-control-label" for="codeInsee">Code commune INSEE</label>
                    <input type="text" value="${model.codeCommuneINSEE}" class="form-control" name="codeInsee" id="codeInsee">
                    <br>
                    <label class="form-control-label" for="nomCommune">Nom commune</label>
                    <input type="text" value="${model.nomCommune}" class="form-control" name="nomCommune" id="nomCommune">
                    <br>
                    <label class="form-control-label" for="codePostal">Code postal</label>
                    <input type="text" value="${model.codePostal}" class="form-control" name="codePostal" id="codePostal">
                    <br>
                    <label class="form-control-label" for="libelleAcheminement">Libelle acheminement</label>
                    <input type="text" value="${model.libelleAcheminement}" class="form-control" name="libelleAcheminement" id="libelleAcheminement">
                    <br>
                    <label class="form-control-label" for="ligne5">Ligne 5</label>
                    <input type="text" value="${model.ligne5}" class="form-control" name="ligne5" id="ligne5">
                    <br>
                    <label class="form-control-label" for="latitude">Latitude</label>
                    <input type="text" value="${model.latitude}" class="form-control" name="latitude" id="latitude">
                    <br>
                    <label class="form-control-label" for="longitude">Longitude</label>
                    <input type="text" value="${model.longitude}" class="form-control" name="longitude" id="longitude">

                    <input form="saveForm" class="btn btn-primary" type="submit" value="Enregistrer"></input>
                    <c:if test="${!empty model.id}">
                        <a href="/communes/${model.id}/delete" class="btn btn-danger">Supprimer</a>
                    </c:if>
                </div>
            </div>
    </div>
</div>