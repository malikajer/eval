<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="../tags/header.jsp" %>

<div class="container">


    <div class="row">
        <div class="col-lg-12">
            <h1>Liste des communes</h1>
            <div class="btn-group">
                <a href="/communes/new/">Nouvelle commune</a>
            </div>
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th scope="col">
                        <c:choose>
                            <c:when test="${sortProperty.equals('nomCommune')}">
                                <c:choose>
                                    <c:when test="${sortDirection.equals('DESC')}">
                                        Nom Commune <a href="/communes?page=${page}&size=${size}&sortDirection=ASC&sortProperty=nomCommune"><span class="glyphicon glyphicon-chevron-up"></span></a>
                                    </c:when>
                                    <c:otherwise>
                                        Nom Commune <a href="/communes?page=${page}&size=${size}&sortDirection=DESC&sortProperty=nomCommune"><span class="glyphicon glyphicon-chevron-down"></span></a>
                                    </c:otherwise>
                                </c:choose>
                            </c:when>
                            <c:otherwise>
                                <a href="/communes?page=${page}&size=${size}&sortDirection=ASC&sortProperty=nomCommune">Nom Commune</a>
                            </c:otherwise>
                        </c:choose>
                    </th>
                    <th scope="col">
                        <c:choose>
                            <c:when test="${sortProperty.equals('codeCommuneINSEE')}">
                                <c:choose>
                                    <c:when test="${sortDirection.equals('DESC')}">
                                        Code Commune INSEE <a href="/communes?page=${page}&size=${size}&sortDirection=ASC&sortProperty=codeCommuneINSEE"><span class="glyphicon glyphicon-chevron-up"></span></a>
                                    </c:when>
                                    <c:otherwise>
                                        Code Commune INSEE <a href="/communes?page=${page}&size=${size}&sortDirection=DESC&sortProperty=codeCommuneINSEE"><span class="glyphicon glyphicon-chevron-down"></span></a>
                                    </c:otherwise>
                                </c:choose>
                            </c:when>
                            <c:otherwise>
                                <a href="/communes?page=${page}&size=${size}&sortDirection=ASC&sortProperty=codeCommuneINSEE">Code Commune INSEE</a>
                            </c:otherwise>
                        </c:choose>
                    </th>
                    <th scope="col">
                        <c:choose>
                            <c:when test="${sortProperty.equals('codePostal')}">
                                <c:choose>
                                    <c:when test="${sortDirection.equals('DESC')}">
                                        Code Postal <a href="/communes?page=${page}&size=${size}&sortDirection=ASC&sortProperty=codePostal"><span class="glyphicon glyphicon-chevron-up"></span></a>
                                    </c:when>
                                    <c:otherwise>
                                        Code Postal <a href="/communes?page=${page}&size=${size}&sortDirection=DESC&sortProperty=codePostal"><span class="glyphicon glyphicon-chevron-down"></span></a>
                                    </c:otherwise>
                                </c:choose>
                            </c:when>
                            <c:otherwise>
                                <a href="/communes?page=${page}&size=${size}&sortDirection=ASC&sortProperty=codePostal">CodePostal</a>
                            </c:otherwise>
                        </c:choose>
                    </th>
                    <th scope="col">
                        <c:choose>
                            <c:when test="${sortProperty.equals('libelleAcheminement')}">
                                <c:choose>
                                    <c:when test="${sortDirection.equals('DESC')}">
                                        Libellé acheminement <a href="/communes?page=${page}&size=${size}&sortDirection=ASC&sortProperty=libelleAcheminement"><span class="glyphicon glyphicon-chevron-up"></span></a>
                                    </c:when>
                                    <c:otherwise>
                                        Libellé acheminement <a href="/communes?page=${page}&size=${size}&sortDirection=DESC&sortProperty=libelleAcheminement"><span class="glyphicon glyphicon-chevron-down"></span></a>
                                    </c:otherwise>
                                </c:choose>
                            </c:when>
                            <c:otherwise>
                                <a href="/communes?page=${page}&size=${size}&sortDirection=ASC&sortProperty=libelleAcheminement">Libellé d'acheminement</a>
                            </c:otherwise>
                        </c:choose>
                    </th>
                    <th scope="col">
                        <c:choose>
                            <c:when test="${sortProperty.equals('ligne5')}">
                                <c:choose>
                                    <c:when test="${sortDirection.equals('DESC')}">
                                        Ligne 5 <a href="/communes?page=${page}&size=${size}&sortDirection=ASC&sortProperty=ligne5"><span class="glyphicon glyphicon-chevron-up"></span></a>
                                    </c:when>
                                    <c:otherwise>
                                        Ligne 5 <a href="/communes?page=${page}&size=${size}&sortDirection=DESC&sortProperty=ligne5"><span class="glyphicon glyphicon-chevron-down"></span></a>
                                    </c:otherwise>
                                </c:choose>
                            </c:when>
                            <c:otherwise>
                                <a href="/communes?page=${page}&size=${size}&sortDirection=ASC&sortProperty=ligne5">Ligne 5</a>
                            </c:otherwise>
                        </c:choose>
                    </th>
                    <th scope="col">
                        <c:choose>
                            <c:when test="${sortProperty.equals('latitude')}">
                                <c:choose>
                                    <c:when test="${sortDirection.equals('DESC')}">
                                        Latitude <a href="/communes?page=${page}&size=${size}&sortDirection=ASC&sortProperty=latitude"><span class="glyphicon glyphicon-chevron-up"></span></a>
                                    </c:when>
                                    <c:otherwise>
                                        Latitude <a href="/communes?page=${page}&size=${size}&sortDirection=DESC&sortProperty=latitude"><span class="glyphicon glyphicon-chevron-down"></span></a>
                                    </c:otherwise>
                                </c:choose>
                            </c:when>
                            <c:otherwise>
                                <a href="/communes?page=${page}&size=${size}&sortDirection=ASC&sortProperty=latitude">Latitude</a>
                            </c:otherwise>
                        </c:choose>
                    </th>
                    <th scope="col">
                        <c:choose>
                            <c:when test="${sortProperty.equals('longitude')}">
                                <c:choose>
                                    <c:when test="${sortDirection.equals('DESC')}">
                                        Longitude <a href="/communes?page=${page}&size=${size}&sortDirection=ASC&sortProperty=longitude"><span class="glyphicon glyphicon-chevron-up"></span></a>
                                    </c:when>
                                    <c:otherwise>
                                        Longitude <a href="/communes?page=${page}&size=${size}&sortDirection=DESC&sortProperty=longitude"><span class="glyphicon glyphicon-chevron-down"></span></a>
                                    </c:otherwise>
                                </c:choose>
                            </c:when>
                            <c:otherwise>
                                <a href="/communes?page=${page}&size=${size}&sortDirection=ASC&sortProperty=longitude">Longitude</a>
                            </c:otherwise>
                        </c:choose>
                    </th>
                    <th scope="col"></th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${model.getContent()}" var="commune">
                    <tr>
                        <th scope="row">${commune.nomCommune}</th>
                        <td>${commune.codeCommuneINSEE}</td>
                        <td>${commune.codePostal}</td>
                        <td>${commune.libelleAcheminement}</td>
                        <td>${commune.ligne5}</td>
                        <td>${commune.latitude}</td>
                        <td>${commune.longitude}</td>

                        <td><a href="/communes/${commune.id}">Détail</a></td>

                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <div class="row">
                <div class="col-lg-6">
                    <p>
                        Affichage des Communes ${start} à ${end} sur un Total de ${model.totalElements}</p>
                </div>
                <div class="col-lg-6">
                    <ul class="pagination">
                        <% if(request.getParameter("page").equals("0")) {%>
                        <li class disabled="disabled"><a href="">&laquo;</a></li>
                        <% } else { %>
                        <li><a href="/communes?page=${param.page-1}&size=${param.size}&sortProperty=${param.sortProperty}&sortDirection=${param.sortDirection}">&laquo;</a> </li>
                        <% } %>
                        <li><a href="#">Page ${param.page+1}</a></li>
                        <c:choose>
                            <c:when test="${param.page+1 == communes.totalPages}">
                                <li class="disabled"><a href="">&raquo;</a></li>
                            </c:when>
                            <c:otherwise>
                                <li><a href="/communes?page=${param.page+1}&size=${param.size}&sortProperty=${param.sortProperty}&sortDirection=${param.sortDirection}">&raquo;</a> </li>
                            </c:otherwise>
                        </c:choose>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
