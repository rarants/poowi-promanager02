<%--
  Created by IntelliJ IDEA.
  User: Raissa
  Date: 19/06/2022
  Time: 00:31
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Ver quadro</title>
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
    </style>
</head>
<body>
    <nav class="navbar bg-dark text-white">
        <div class="container-fluid">
            <a class="navbar-brand text-white">Quadro</a>
            <div class="d-flex">
                <c:if test="${usuario != null}">
                    <a href="/promanager/login/sign-out" class="btn btn-danger btn-sm mb-3">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-right" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M10 12.5a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v2a.5.5 0 0 0 1 0v-2A1.5 1.5 0 0 0 9.5 2h-8A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-2a.5.5 0 0 0-1 0v2z"/>
                            <path fill-rule="evenodd" d="M15.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 0 0-.708.708L14.293 7.5H5.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/>
                        </svg>
                        Sair
                    </a>
                </c:if>
                <c:if test="${usuario == null}">
                    <a href="/promanager/login" class="btn btn-primary btn-sm mb-3">
                        Login
                    </a>
                </c:if>
            </div>
        </div>
    </nav>
    <div class="p-4">
        <h1 class="text-white text-center title">
            Quadro
            <span class="upper text-info" style="font-weight: 500">${quadro.titulo}</span>
        </h1>
        <p class="text-white text-center m-4">
            Este é o seu quadro ${quadro.titulo}. Aqui você pode editá-lo de acordo com
            as suas necessidades. Gerencie suas tarefas e organize-as em colunas e
            cartões.
            <!-- Você também pode definir etiquetas para facilitar a visualização. -->
        </p>
        <p class="text-secondary text-center m-4">
            Descrição do quadro: ${quadro.descricao}
        </p>
        <div class="text-left my-4 text-primary">
            <c:if test="${usuario != null}">
                <a href="/promanager/usuario/dashboard" class="mb-4">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-left" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M15 8a.5.5 0 0 0-.5-.5H2.707l3.147-3.146a.5.5 0 1 0-.708-.708l-4 4a.5.5 0 0 0 0 .708l4 4a.5.5 0 0 0 .708-.708L2.707 8.5H14.5A.5.5 0 0 0 15 8z"/>
                    </svg>
                    Voltar para a lista de quadros
                </a>
            </c:if>
        </div>
        <div class="card p-0">
            <div class="card-header p-4">
                Quadro ${quadro.titulo}
                <div class="text-end">
                    <c:if test="${usuario != null}">
                        <a href="/promanager/usuario/colunas/quadro/${quadro.id}/coluna/nova" class="btn btn-primary btn-sm">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-circle-fill" viewBox="0 0 16 16">
                                <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8.5 4.5a.5.5 0 0 0-1 0v3h-3a.5.5 0 0 0 0 1h3v3a.5.5 0 0 0 1 0v-3h3a.5.5 0 0 0 0-1h-3v-3z"/>
                            </svg>
                            Nova coluna
                        </a>
                    </c:if>
                    <!--<a href="/promanager/usuario/etiquetas/quadro/${quadro.id}/etiquetas" class="btn btn-info btn-sm">
                        Gerenciar etiquetas
                    </a>-->
                </div>
            </div>
            <div class="card-body m-0">
                <div class="row">
                    <c:forEach items="${quadro.colunaArrayList}" var="coluna">
                        <div class="card p-0 mx-3" style="width: 18rem;">
                            <div class="card-header">
                                <div class="row">
                                    <div class="text-start">${coluna.titulo}</div>
                                    <c:if test="${usuario != null}">
                                        <div class="text-end">
                                            <a href="/promanager/usuario/colunas/quadro/${quadro.id}/coluna/${coluna.id}/editar" class="btn btn-info text-white btn-sm mt-4">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                                                    <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                                                    <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
                                                </svg>
                                                Editar
                                            </a>
                                            <a href="/promanager/usuario/colunas/quadro/${quadro.id}/coluna/${coluna.id}/cartao/novo" class="btn btn-primary btn-sm mt-4">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-circle-fill" viewBox="0 0 16 16">
                                                    <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8.5 4.5a.5.5 0 0 0-1 0v3h-3a.5.5 0 0 0 0 1h3v3a.5.5 0 0 0 1 0v-3h3a.5.5 0 0 0 0-1h-3v-3z"/>
                                                </svg>
                                                Novo cartão
                                            </a>
                                        </div>
                                    </c:if>
                                </div>
                            </div>
                            <div class="card-body">
                                <c:forEach items="${coluna.cartaoArrayList}" var="cartao">
                                    <div class="card my-3">
                                        <div class="card-body m-0">
                                            <h3 class="card-title">${cartao.titulo}</h3>
                                            <h5 class="card-subtitle text-muted">${cartao.descricao}</h5>
                                            <p>
                                                <c:if test="${cartao.dataTermino != null || cartao.dataInicio != null}">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-calendar2-fill" viewBox="0 0 16 16">
                                                        <path d="M4 .5a.5.5 0 0 0-1 0V1H2a2 2 0 0 0-2 2v11a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V3a2 2 0 0 0-2-2h-1V.5a.5.5 0 0 0-1 0V1H4V.5zM2.545 3h10.91c.3 0 .545.224.545.5v1c0 .276-.244.5-.546.5H2.545C2.245 5 2 4.776 2 4.5v-1c0-.276.244-.5.545-.5z"/>
                                                    </svg>
                                                </c:if>${cartao.dataInicio}
                                                <c:if test="${cartao.dataTermino != null}">
                                                    até ${cartao.dataTermino}
                                                </c:if>
                                            </p>
                                            <c:choose>
                                                <c:when test="${cartao.status == 'true'}">
                                                    <p>
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-check-circle-fill" viewBox="0 0 16 16">
                                                            <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
                                                        </svg>
                                                        Finalizado
                                                    </p>
                                                </c:when>
                                                <c:otherwise>
                                                    <p>
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-clock-fill" viewBox="0 0 16 16">
                                                            <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8 3.5a.5.5 0 0 0-1 0V9a.5.5 0 0 0 .252.434l3.5 2a.5.5 0 0 0 .496-.868L8 8.71V3.5z"/>
                                                        </svg>
                                                        Pendente
                                                    </p>
                                                </c:otherwise>
                                            </c:choose>
                                            <c:if test="${usuario != null}">
                                                <div class="text-end">
                                                    <a href="/promanager/usuario/colunas/quadro/${quadro.id}/coluna/${coluna.id}/cartao/${cartao.id}/editar" class="btn btn-info text-white btn-sm mt-4">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                                                            <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                                                            <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
                                                        </svg>
                                                        Editar cartao
                                                    </a>
                                                </div>
                                            </c:if>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
