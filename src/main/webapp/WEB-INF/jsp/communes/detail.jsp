<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../tags/header.jsp" %>
<div class="container">
    <h2>Détail du ${communes.className} de id ${communes.id}</h2>

    <div class="row">
        <form id="saveForm" action="/${communes.className.toLowerCase()}s/save" method="post">
            <div class="col-lg-6">
                <div class="form-group">
                    <input type="hidden" value="${communes.id}" name="id" id="id">
                    <label class="form-control-label" for="nomCommunes">Nom Commune</label>
                    <input type="text" value="${communes.nom}" class="form-control" name="nomCommunes" id="nomCommunes">
                </div>
            </div>
        </form>
    </div>
</div>

<%@ include file="../tags/footer.jsp" %>