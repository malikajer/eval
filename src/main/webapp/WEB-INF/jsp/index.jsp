<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="tags/header.jsp" %>


<div class="container">
    <div class="jumbotron">
        <h1>Evaluation JAVA.malika jerrar</h1>
        <ul class="list-group">
            <li class="list-group-item">
                <h4 class="list-group-item-heading">1 - Récupérer une Commune par ID</h4>
                <p class="list-group-item-text">En cliquant <a href="/communes/5">ici</a>, on peut afficher les informations de la Commune qui a l'identifiant 5.</p>
            </li>
            <li class="list-group-item">
                <h4 class="list-group-item-heading">2 - Récupérer les Communes par code INSEE</h4>
                <p class="list-group-item-text">En cliquant <a href="/communes/codeInsee/55001">ici</a>, on peut afficher les informations de la Commune qui a le code INSEE 55001. </p>
            </li>
            <li class="list-group-item">
                <h4 class="list-group-item-heading">3 - Récupérer les Communes par Code Postal</h4>
                <p class="list-group-item-text">En cliquant <a href="/communes/codePostal/70300">ici</a>, on peut afficher les informations de la Commune qui a pour code postal 70300.</p>
            </li>
            <li class="list-group-item">
                <h4 class="list-group-item-heading">4 - Récupérer les Communes par Nom</h4>
                <p class="list-group-item-text">En cliquant <a href="/communes/nomCommune/COURDIMANCHE SUR ESSONNE">ici</a>, on peut afficher les informations de la Commune qui a pour nom COURDIMANCHE SUR ESSONNE.</p>
            </li>
            <li class="list-group-item">
                <h4 class="list-group-item-heading">5 - Récupérer le nombre de codes INSEE distincts</h4>
                <p class="list-group-item-text">Ci-dessous le nombre de codes INSEE distincts.
                <p class="list-group-item-text"> ${nbCodeInsee} </p>
            </li>
            <li class="list-group-item">
                <h4 class="list-group-item-heading">6 - Récupérer le nombre de codes postaux distincts</h4>
                <p class="list-group-item-text">Ci-dessous le nombre de codes postaux distincts.
                <p class="list-group-item-text"> ${nbCodePostaux} </p>            </li>
            <li class="list-group-item">
                <h4 class="list-group-item-heading">7 - Création d'une Commune</h4>
                <p class="list-group-item-text">En cliquant <a href="/communes/new">ici</a> on accède au formulaire de création d'une Commune.</p>
            </li>
            <li class="list-group-item">
                <h4 class="list-group-item-heading">8 - Modification d'une Commune</h4>
                <p class="list-group-item-text">En cliquant <a href="/communes/5">ici</a>, il est possible de modifier les informations de la Commune qui a l'ID 5 lorsqu'on clique sur le bouton <em>Enregistrer</em>.</p>
            </li>
            <li class="list-group-item">
                <h4 class="list-group-item-heading">9 - Suppression d'une commune</h4>
                <p class="list-group-item-text">En cliquant <a href="/communes/5">ici</a>, il est possible de supprimer la Commune qui a l'ID 5 lorsqu'on clique sur le bouton <em>Supprimer</em>.</p>
            </li>
            <li class="list-group-item">
                <h4 class="list-group-item-heading">10 - Récupérer les communes situées dans un périmètre d'environ X kilomètres autour d'un point (localisé par sa latitude et longitude).</h4>
            </li>
        </ul>
    </div>
</div>