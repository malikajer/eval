<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" %>

<html lang="en" >
<head>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/webjars/bootstrap/3.3.7/css/bootstrap.min.css" />
</head>
<body>

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <a href="/" class="navbar-brand">Gestion des communes</a>
            </button>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="/" class="nav-link">Page d'accueil</a></li>
            </ul>
            <ul class="nav navbar-nav">
                <li class="active"><a href="/communes?page=0&size=10&sortProperty=nomCommune&sortDirection=ASC" class="nav-link">Liste des communes</a></li>
            </ul>
        </div>
    </div>
</nav>
    <% if(request.getParameter("success") != null) {
    pageContext.setAttribute("success", request.getParameter("success"));
}%>
    <% if (pageContext.findAttribute("success") != null){ %>
<div class="alert alert-success alert-dismissible" role="alert">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    ${success}
</div>
<% } %>