<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../tags/header.jsp" %>

<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <h1>Liste des Communes</h1>
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th scope="col">
                        Nom Communes <a href=""><span class="glyphicon glyphicon-chevron-up"></span></a>
                    </th>
                    <th scope="col">
                        Id <a href=""><span class="glyphicon glyphicon-chevron-down"></span></a>
                    </th>
                    <th scope="col">
                        Code Insee  <a href=""></a>
                    </th>
                    <th scope="col">
                        Code Postal <a href=""></a>
                    </th>
                    <th scope="col">
                        Libelle Acheminement <a href=""></a>
                    </th>
                    <th scope="col">
                        Latitude <a href=""></a>
                    </th>
                    <th scope="col">
                        Longitude <a href=""></a>
                    </th>
                </tr>
                </thead>

                <tbody>
                <c:forEach items="${communes.getContent()}" var="communes">
                    <tr>
                        <th scope="row">${communes.nomCommune}</th>
                        <td>${communes.codeCommuneInsee}</td>
                        <td>${communes.codePostal}</td>
                        <td>${communes.libelleAcheminement}</td>
                        <td>${communes.ligne5}</td>
                        <td>${communes.latitude}</td>
                        <td>${communes.longitude}</td>

                        <td><a href="/communes/${communes.id}">Détail</a></td>

                    </tr>
                </c:forEach>
                </tbody>

            </table>

            <div class="row">

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
<%@ include file="../tags/footer.jsp" %>