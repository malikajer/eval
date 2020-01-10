<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../tags/header.jsp" %>
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <h1>Liste des communes</h1>
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th scope="col">
                        Id <a href=""><span class="glyphicon glyphicon-chevron-up"></span></a>
                    </th>
                    <th scope="col">
                        nomCommune <a href=""><span class="glyphicon glyphicon-chevron-down"></span></a>
                    </th>
                    <th scope="col">
                        <a href="">codeCommuneInsee</a>
                    </th>
                    <th scope="col"></th>
                </tr>
                </thead>
            </table>
        </div>
    </div>
</div>

<%@ include file="../tags/footer.jsp" %>