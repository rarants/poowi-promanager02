<%--
  Created by IntelliJ IDEA.
  User: Raissa
  Date: 19/06/2022
  Time: 00:40
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="router" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <title>Nova coluna</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    <style>
        body {
            background: rgb(0,83,110);
            background: linear-gradient(7deg, rgba(0,83,110,1) 0%, rgba(0,37,48,1) 100%);
            height: 100%;
            margin: 0;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
        html, body { height: 100%; }
        body { margin: 0; font-family: Roboto, "Helvetica Neue", sans-serif; }
        .card {
            padding: 20px;
            margin-bottom: 20px;
            transition: .5s;
        }
        .btn {
            transition: .5s;
            border-radius: 15px;
            padding-inline: 1.2rem;
        }
        .btn:hover {
            transition: .5s;
            transform: translateY(-3px);
        }

        .alert {
            margin: auto;
            width: 40%;
            padding: 10px;
        }
    </style>
</head>
<body>
<nav class="navbar bg-dark text-white">
    <div class="container-fluid">
        <a class="navbar-brand text-white">Novo cartão</a>
        <div class="d-flex">
            <a href="router?acao=sair" class="btn btn-danger btn-sm mb-3">
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
    <div class="text-center text-white">
        <h1>Novo cartão na coluna <span class="text-primary">${coluna.titulo}</span> do quadro <span class="text-primary">${quadro.titulo}</span></h1>
        <p>
            Preencha as informações abaixo
        </p>
    </div>
    <div class="text-left my-4 text-primary">
        <a href="/promanager/usuario/dashboard/quadros/ver/${quadro.id}" class="mb-4">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-left" viewBox="0 0 16 16">
                <path fill-rule="evenodd" d="M15 8a.5.5 0 0 0-.5-.5H2.707l3.147-3.146a.5.5 0 1 0-.708-.708l-4 4a.5.5 0 0 0 0 .708l4 4a.5.5 0 0 0 .708-.708L2.707 8.5H14.5A.5.5 0 0 0 15 8z"/>
            </svg>
            Voltar para o quadro
        </a>
    </div>
    <div class="mx-auto card p-2" style="width: 25rem;">
        <div class="card-body">
            <div class="card-title">Novo cartão</div>
            <%--@elvariable id="coluna" type="com.example.rarants_promanager.model.Cartao"--%>
            <form:form method="POST" action="/promanager/usuario/colunas/quadro/${quadro.id}/coluna/${coluna.id}/cartao/novo" modelAttribute="cartao" class="formulario child">
                <div class="row">
                    <div class="col-12 mb-3">
                        <form:label path="titulo" for="titulo" class="form-label">Título</form:label>
                        <form:input
                                path="titulo"
                                type="text"
                                class="form-control"
                                placeholder="Digite o título do cartão"
                                required="true"
                        />
                    </div>
                    <div class="col-6 mb-3">
                        <form:label path="status" for="status" class="form-label">Finalizado?</form:label>
                        <br />
                        <form:checkbox path="status" value="status" class="form-check-input"/>
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
                    <div class="col-6 mb-3">
                        <form:label path="dataInicio" for="dataInicio" class="form-label">Data de início</form:label>
                        <form:input
                                path="dataInicio"
                                type="date"
                                class="form-control"
                                placeholder="Digite a data de início"
                        />
                    </div>
                    <div class="col-6 mb-3">
                        <form:label path="dataTermino" for="dataTermino" class="form-label">Data de início</form:label>
                        <form:input
                                path="dataTermino"
                                type="date"
                                class="form-control"
                                placeholder="Digite a data de início"
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
                    <input type="submit" value="Adicionar cartão" name="novo" class="btn btn-primary btn-sm mt-4"/>
                </div>
            </form:form>
        </div>
    </div>
</body>
</html>
