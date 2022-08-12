<%--
  Created by IntelliJ IDEA.
  User: Raissa
  Date: 22/07/2022
  Time: 16:08
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Etiquetas do quadro</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</head>
<body>
<div>
    <nav class="navbar bg-dark text-white">
        <div class="container-fluid">
            <a class="navbar-brand text-white">Etiquetas do quadro</a>
            <div class="d-flex">
                <a href="/promanager/login/sign-out" class="btn btn-danger btn-sm mb-3">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-right" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M10 12.5a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v2a.5.5 0 0 0 1 0v-2A1.5 1.5 0 0 0 9.5 2h-8A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-2a.5.5 0 0 0-1 0v2z"/>
                        <path fill-rule="evenodd" d="M15.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 0 0-.708.708L14.293 7.5H5.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/>
                    </svg>
                    Sair
                </a>
            </div>
        </div>
    </nav>
    <div class="p-4">
        <div class="text-center mb-4">
            <h1>Etiquetas do quadro <span class="text-primary">${quadro.titulo}</span></h1>
        </div>
        <div class="text-left my-4">
            <a href="/promanager/usuario/dashboard/quadros/ver/${quadro.id}" class="mb-4">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-left" viewBox="0 0 16 16">
                    <path fill-rule="evenodd" d="M15 8a.5.5 0 0 0-.5-.5H2.707l3.147-3.146a.5.5 0 1 0-.708-.708l-4 4a.5.5 0 0 0 0 .708l4 4a.5.5 0 0 0 .708-.708L2.707 8.5H14.5A.5.5 0 0 0 15 8z"/>
                </svg>
                Voltar para o quadro
            </a>
        </div>
        <div class="text-center mb-4">
            <a href="/promanager/usuario/etiquetas/quadro/${quadro.id}/etiqueta/nova" class="btn btn-primary btn-sm">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-circle-fill" viewBox="0 0 16 16">
                    <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8.5 4.5a.5.5 0 0 0-1 0v3h-3a.5.5 0 0 0 0 1h3v3a.5.5 0 0 0 1 0v-3h3a.5.5 0 0 0 0-1h-3v-3z"/>
                </svg>
                Nova etiqueta
            </a>
        </div>
        <div class="row">
            <c:forEach items="${quadro.etiquetaArrayList}" var="etiqueta">
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card m-2">
                      <div class="card-body m-0 pb-0">
                          <h3 class="card-title">
                              <c:choose>
                                  <c:when test="${etiqueta.cor == 'azul'}">
                                      <div class="alert alert-primary" role="alert">
                                          <b>${etiqueta.titulo}</b>
                                      </div>
                                  </c:when>
                                  <c:when test="${etiqueta.cor == 'verde'}">
                                      <div class="alert alert-success" role="alert">
                                          <b>${etiqueta.titulo}</b>
                                      </div>
                                  </c:when>
                                  <c:when test="${etiqueta.cor == 'laranja'}">
                                      <div class="alert alert-warning" role="alert">
                                          <b>${etiqueta.titulo}</b>
                                      </div>
                                  </c:when>
                                  <c:when test="${etiqueta.cor == 'vermelho'}">
                                      <div class="alert alert-danger" role="alert">
                                          <b>${etiqueta.titulo}</b>
                                      </div>
                                  </c:when>
                                  <c:otherwise>
                                      <div class="alert alert-secondary" role="alert">
                                          <b>${etiqueta.titulo}</b>
                                      </div>
                                  </c:otherwise>
                              </c:choose>
                          </h3>
                          <div class="btn-group mt-2">
                              <a href="/promanager/usuario/dashboard/quadros/etiquetas/quadro/${quadro.id}/etiqueta/${etiqueta.id}/editar" class="btn btn-info btn-sm mb-3 ml-3 text-white">
                                  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                                      <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                                      <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
                                  </svg>
                              </a>
                              <a href="/promanager/usuario/dashboard/quadros/etiquetas/quadro/${quadro.id}/etiqueta/${etiqueta.id}/remover" class="btn btn-danger btn-sm mb-3 ml-3">
                                  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash-fill" viewBox="0 0 16 16">
                                      <path d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z"/>
                                  </svg>
                              </a>
                          </div>
                      </div>
                  </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
</body>
</html>
