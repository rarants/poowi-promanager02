<%--
  Created by IntelliJ IDEA.
  User: Raissa
  Date: 22/07/2022
  Time: 15:40
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="router" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Novo quadro</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</head>
<body>
    <nav class="navbar bg-dark text-white">
        <div class="container-fluid">
            <a class="navbar-brand text-white">Novo quadro</a>
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
        <div class="text-center">
            <h1>Novo quadro</h1>
            <p>
                Preencha as informações abaixo
            </p>
        </div>
        <div class="text-left my-4">
            <a href="/promanager/usuario/dashboard" class="mb-4">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-left" viewBox="0 0 16 16">
                    <path fill-rule="evenodd" d="M15 8a.5.5 0 0 0-.5-.5H2.707l3.147-3.146a.5.5 0 1 0-.708-.708l-4 4a.5.5 0 0 0 0 .708l4 4a.5.5 0 0 0 .708-.708L2.707 8.5H14.5A.5.5 0 0 0 15 8z"/>
                </svg>
                Voltar para a lista de quadros
            </a>
        </div>
        <div class="mx-auto card p-2" style="width: 25rem;">
            <div class="card-body">
                <div class="card-title">Novo quadro</div>
                <%--@elvariable id="quadro" type="com.example.rarants_promanager.model.Quadro"--%>
                <form:form method="POST" action="/promanager/usuario/dashboard/quadros/novo" modelAttribute="quadro" class="formulario child">
                    <div class="row">
                        <div class="col-6 mb-3">
                            <form:label path="titulo" for="titulo" class="form-label">Título</form:label>
                            <form:input
                                    path="titulo"
                                    type="text"
                                    class="form-control"
                                    placeholder="Digite o título do quadro"
                                    value="${quadro.titulo}"
                                    required="true"
                            />
                        </div>
                        <div class="col-6 mb-3">
                            <form:label path="publico" for="publico" class="form-label">Público</form:label>
                            <br />
                            <form:checkbox path="publico" value="publico" class="form-check-input"/>
                        </div>
                        <div class="col-12 mb-3">
                            <form:label path="descricao" for="descricao" class="form-label">Descrição</form:label>
                            <form:input
                                    path="descricao"
                                    type="textarea"
                                    class="form-control"
                                    placeholder="Informe uma descrição"
                            />
                        </div>
                    </div>
                    <div class="text-center mt-3">
                        <router:if test="${not empty error}">
                            <div class="alert alert-danger" role="alert">
                                <b>${error}</b>
                            </div>
                        </router:if>
                    </div>
                    <div class="text-center">
                        <input type="submit" value="Adicionar quadro" name="novo" class="btn btn-primary btn-sm mt-4"/>
                </form:form>
            </div>
        </div>
    </div>
    </div>
</body>
</html>